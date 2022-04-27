#!/usr/bin/env python
# coding: utf-8

# In[1]:


from __future__ import print_function 
from collections import defaultdict
import hashlib
import os
import sys

#Liest Datei in Bytes-Stücke
def read_chunk(fobj, chunk_size=1024):
    while True:
        chunk = fobj.read(chunk_size)
        if not chunk:
            return
        yield chunk

#Erstellt Hashtabelle nach Größe
def get_hash(filename, first_chunk_only=False, hash=hashlib.sha1):
    hashobj = hash()
    file_object = open(filename, 'rb')

    if first_chunk_only:
        hashobj.update(file_object.read(1024))
    else:
        for chunk in chunk_reader(file_object):
            hashobj.update(chunk)
    hashed = hashobj.digest()

    file_object.close()
    return hashed

#Sucht Duplikate
def find_duplicates(paths, hash=hashlib.sha1):
    hashes_by_size = defaultdict(list)  
    hashes_on_1k = defaultdict(list) 
    hashes_full = {}
    
    print("################")
    print(paths)
    
    for path in paths:
        for dirpath, dirnames, filenames in os.walk(path):
            for filename in filenames:
                full_path = os.path.join(dirpath, filename)
                try:
                    full_path = os.path.realpath(full_path)
                    file_size = os.path.getsize(full_path)
                    hashes_by_size[file_size].append(full_path)
                except (OSError,):
                    continue


#Alle Datein mit der gleichen Größe -> Erstelle eine Hashtabelle von ersten 1024 Bytes
    for size_in_bytes, files in hashes_by_size.items():
        if len(files) < 2:
            continue    

        for filename in files:
            try:
                small_hash = get_hash(filename, first_chunk_only=True)
                hashes_on_1k[(small_hash, size_in_bytes)].append(filename)
            except (OSError,):
                continue

#Alle Datein mit den selben ersten 1024 Bytes -> berechne Gesamtbytes
    for __, files_list in hashes_on_1k.items():
        if len(files_list) < 2:
            continue    

        for filename in files_list:
            try: 
                full_hash = get_hash(filename, first_chunk_only=False)
                duplicate = hashes_full.get(full_hash)
                if duplicate:
                    print("Duplicate found: {} and {}".format(filename, duplicate))
                    os.remove(duplicate)
                else:
                    hashes_full[full_hash] = filename
            except (OSError,):
                continue


if __name__ == "__main__":
    paths = ["/Volumes/Kilbertus/gefilterte Bad-dateien"]
    find_duplicates(paths)
   


# In[ ]:





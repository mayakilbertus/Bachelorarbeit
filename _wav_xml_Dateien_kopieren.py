#!/usr/bin/env python
# coding: utf-8


import os
import os.path
import shutil    
new_folder = r'/Volumes/Kilbertus/gefilterte Bad-dateien'
for root, dir, files in os.walk(r'Volumes/Kilbertus/Bat-dateien Kopie'):
    for ffile in files:
        if os.path.splitext(ffile)[1] in ('.wav', '.xml'):
            src = os.path.join(root, ffile)
            shutil.copy(src, new_folder)
print("done")


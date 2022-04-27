#!/usr/bin/env python
# coding: utf-8

# In[23]:


import pandas as pd
import numpy as np
import glob
import os
path = r'/Volumes/Kilbertus/Bachelorarbeit/Klassifikationen neu/Klassifikationen pip'
all_files = glob.glob(path + "/*.csv")
df = pd.concat(map(pd.read_csv, all_files))

df.to_csv('/Volumes/Kilbertus/Bachelorarbeit/Klassifikationen neu/Klassifikationen pip/klassifikationen_ges.csv')

print("done")


# In[17]:


import sys
print(sys.version)


# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





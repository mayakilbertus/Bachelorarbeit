#!/usr/bin/env python
# coding: utf-8

# In[6]:


import os
import pandas as pd
import pandas._testing as tm


df = pd.read_csv('/Volumes/Kilbertus/Bachelorarbeit/Klassifikationen /Klassifikationen_arten /klassifikationen_ges_id.csv')


df1 = pd.pivot_table(df, values ='Anteil', index =['Cluster_ID', 'Transekt', 'ID', 'Gesamtanzahl', 'N..spec.', 'N..noc', 'N..leis'],columns =['Klassifikationen']).reset_index()

df1.to_csv('/Volumes/Kilbertus/Bachelorarbeit/Klassifikationen /Klassifikationen_arten /klassifikationen_nyc.csv')


# In[ ]:





# In[ ]:





# In[ ]:





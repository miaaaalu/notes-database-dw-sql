## Define pandas dataframe
```py
import pandas as pd
dataframe = pd.DataFrame( data, index, columns, dtype)
```
## How will you combine different pandas dataframes?
```py
# append() method
df1.append(df2)
# contact() method
pd.concat([df1, df2]) 
# join() method
df1.join(df2)
```

##  create a series from the dictionary object in pandas?
```py
import pandas as pd    
dict_info = {'key1' : 2.0, 'key2' : 3.1, 'key3' : 2.2}  
series_obj = pd.Series(dict_info)    
print (series_obj)    
Output:
x     2.0
y     3.1
z     2.2
dtype: float64
```

## identify and deal with missing values in a dataframe
```py
# identify null value
missing_data_count=df.isnull().sum()

# fill null value
df[‘column_name’].fillna(0)
```

## delete indices, rows and columns from a dataframe?
```py
# To delete an Index:
df.index.column = None

# To delete row/column from dataframe:
data = data.drop(columns="cases")                           # delete a single column
data = data.drop(columns=["cases", "cases_per_million"])    # # delete multiple column
```

## can the pandas library recognize dates?
```py
# step1 import datetime library
import pandas as pd
from datetime import datetime
dateparser = lambda date_val: datetime.strptime(date_val, '%Y-%m-%d %H:%M:%S')
# step2 using parse_dates
df = pd.read_csv("some_file.csv", parse_dates=['datetime_column'], date_parser=dateparser)
```
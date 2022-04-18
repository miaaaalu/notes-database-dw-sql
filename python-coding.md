### Write python function which takes a variable number of arguments.
```py
def function_name(*arg_list)
```
### WAP which takes a sequence of numbers and check if all numbers are unique.
```py
def check_distinct(data_list):
 if len(data_list) == len(set(data_list)):
   return True
 else:
   return False;
print(check_distinct([1,6,5,8]))     #Prints True
print(check_distinct([2,2,5,5,7,8])) #Prints False
```

###  Count Characters in a Text File
```py
# read the content of file
data = file.read()

# read the file content without the space
data = file.read().replace(" ","")

#get the length of the data
number_of_characters = len(data)

print('Number of characters in text file :', number_of_characters)
```
### Python读取文件
常规方式
```py
# step 1 open file, using open()
# 如果文件不存在，open()函数就会抛出一个IOError的错误，并且给出错误码和详细的信息告诉你文件不存在
file = open('/Users/michael/notfound.txt', 'r')

# step 2 read file, using read()
file.read()

# step 3 close file, using close()
file.close()
```
With 方式 (推荐)
```py
with open('/path/to/file', 'r') as file:
    print(file.read())
```
非uft-8编码文件
```py
with open('flie path','r', encoding='gbk') as file:
    print(file.read())

二进制文件
with open('file','rb') as file
    print(file.read())
```

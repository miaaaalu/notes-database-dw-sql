## 1. What are `lists` and `tuples`? What is the key difference between the two?
`Lists` and `Tuples` are both sequence data types that can store a collection of objects in Python.
| List            | Tuple       |   |   |   |
|-----------------|-------------|---|---|---|
| square brackets | parantheses 
| mutable         | immutable  
| slower than tuple| faster than list       

##  2. common built-in data types in Python
- Numbers– They include integers, floating point numbers, and complex numbers. eg. 1, 7.9,3+4i

- `List` An ordered sequence of items is called a list. The elements of a list may belong to different data types. Eg. [5,’market’,2.4]

- `Tuple` It is also an ordered sequence of elements. Unlike lists , tuples are immutable, which means they can’t be changed. Eg. (3,’tool’,1)

- `String` A sequence of characters is called a string. They are declared within single or double quotes. Eg. “Sana”, ‘She is going to the market’, etc.

- `Set`– Sets are a collection of unique items that are not in order. Eg. {7,6,8}

- `Dictionary` A dictionary stores values in key and value pairs where each value can be accessed through its key. The order of items is not important. Eg. {1:’apple’,2:’mango}

- `Boolean` There are 2 boolean values- True and False.

##  3. type conversion 
定义：将一种数据类型转换成另一种

## 4. mutable types and immutable

|Mutable     |Immutable     |
|------------|--------------|
|Lists       |Integers 
|Dictionaries|Floating-Point numbers
|Sets        |Booleans
|            |Strings
|            |Tuples

## 5. What are the benefits of using Python?
- Easy to use
- Interpreted language
- Dynamically typed
- Free and open source
- Extensive support for libraries

## 6. What are namespace
- 内置名称（built-in names）， Python 语言内置的名称，比如函数名 abs、char 和异常名称 BaseException、Exception 等等。
- 全局名称（global names），模块中定义的名称，记录了模块的变量，包括函数、类、其它导入的模块、模块级的变量和常量。
- 局部名称（local names），函数中定义的名称，记录了函数的变量，包括函数的参数和局部定义的变量。（类中定义的也是）
```py
# var1 是全局名称
var1 = 5
def some_func():
 
    # var2 是局部名称
    var2 = 6
    def some_inner_func():
 
        # var3 是内嵌的局部名称
        var3 = 7
```
## 7. Local variables(局部变量) and Global variables（全局变量）
- Global var: variables outside a function or in a global space
- Local var: variables inside a function
- 全局变量：在函数外或全局空间中声明的变量称为全局变量。这些变量可以由程序中的任何函数访问。
- 局部变量：在函数内声明的任何变量都称为局部变量。此变量存在于局部空间中，而不是全局空间中。

## 8. Is indentation required in python?
缩进(indentation)是必要的。`loop`、`class`、`function`等中的所有代码都在缩进块中指定。

## 9. Module and Packages
- oduels：a .pyfile containing Python code.
- Build in Modules: `os`, `sys`, `math`, `random`, `data time`

Python模块是包含Python代码的.py文件。此代码可以是函数类或变量。一些常用的内置模块包括：sys、math、random、data time、JSON。
总结：
* 数据可以封装在容器 （`list`、`tuple`、`string`、`dict`）里面
* 代码可以封装在`function`里
* function和数据可以封装在class里面（或者说`Method`和`Attribute`可以封装在class里面）
* 上述三类内容可以打包在module（模块）里, 一个 .py 文件就是个 module
* 多个module可以打包在package里面
* 多个package可以打包在library里面

## 10. `__init__`
`__init__`：魔法函数，初始化class的信息，没有其他作用，它只在类中使用。
```py
# class definition
class Student:
   def __init__(self, fname, lname, age, section):
       self.firstname = fname
       self.lastname = lname
       self.age = age
       self.section = section
# creating a new object
stu1 = Student("Sara", "Ansh", 22, "A2")
```

### 11. `breake`, `continue`
- `break`: terminate the loop when the confition is triggered
- `continue`: terminate the part of a loop when condition is triggered, but to go on to complete the rest of the loop.
- `pass`: used as a placeholder for future code, to avoid getting an error when empty code is not allowed. 当你没有想好函数的内容是可以用 pass 填充，使程序可以正常运行。

## 12. docstring
-  a multiline string used to document a specific code segment.
- The docstring should describe what the function or method does.

## 13. What is slicing in Python?
- Syntax： `[start : stop : step]`
- Slicing can be done on `strings`, `arrays`, `lists`, and `tuples`.

```py
a[start:stop:step] # start through not past stop, by step
a[start:stop]      # items start through stop-1
a[start:]          # items start through the rest of the array
a[:stop]           # items from the beginning through stop-1
a[:]               # a copy of the whole array
--------------------------------------------------------------
a[-1]    # last item in the array
a[-2:]   # last two items in the array
a[:-2]   # everything except the last two items
--------------------------------------------------------------
a[::-1]    # all items in the array, reversed
a[1::-1]   # the first two items, reversed
a[:-3:-1]  # the last two items, reversed
a[-3::-1]  # everything except the last two items, reversed
```

## 14. List comprehensions
- `List comprehensions` provide a more compact and elegant way to create lists than `for-loops`
- allow you to create lists from existing lists.

## 15. Nested list comprehensions
```py
[(x, y) for x in [1,2,3] for y in [3,1,4] if x != y]
```
## 16. Dict comprehensions
```py
dict = {i : i+10 for i in range(4)}

# return
{0: 10, 1: 11, 2: 12, 3: 13}
```

## 17. Lambda
Lambda is an anonymous function in Python, that can accept any number of arguments, but can only have a single expression.
lambda函数也叫匿名函数，该函数可以包含任意数量的参数(arguments)，但只能有一个执行操作的语句。

## 18. **Delete file in Python**
要在Python中删除文件，您需要导入OS模块。之后，您需要使用`os.remove(file_name)`

## 18. **Delete value from tuple in Python**
可以使用`pop()`或`remove()`方法删除数组元素。这两个函数之间的区别在于前者返回已删除的值，而后者则不返回。
- `pop()`: 返回已删除的值
- `remove()`: 不返回已删除的值

##  19. **Explain split() and join()**
* split()  to split a string based on a delimiter to a list of strings.
* join()  to join a list of strings based on a delimiter to give a single string.

## 20. *args and **kwargs
当我们不确定将多少个`number`传递给函数，或者我们想要将存储的list或参数tuple传递给函数时，我们使用*args。

当我们不知道将多少`keyword`参数传递给函数时使用kwargs，或者它可以用于将字典的值作为关键字参数传递。标识符args和kwargs是一个约定，你也可以使用* bob和** billy。
- *args：passes variable number of `non-keyworded arguments`, performed as tuple
- **kwargs: passes variable number of `keyword arguments`, performed as tuple

## 21. **negative indexes**
The indexes from the end of the list, tuple, or string

## 22. **Difference between Array and List**
`Array`和`List`具有相同的存储数据方式。但是，`Array`只能包含单个数据类型元素，而`List`可以包含任何数据类型元素。

## 23. 如何在Python中随机化列表中的元素？
可以使用shuffle函数进行随机列表元素。举例如下：
```py
from random import shuffle
x = ['keep','The','Blue','Flag','Flying','High']
shuffle(x)
```

## 24. range＆xrange有什么区别？
在大多数情况下，xrange和range在功能方面完全相同。它们都提供了一种生成整数列表的方法，唯一的区别是range返回一个Python列表对象，x range返回一个xrange对象。这就表示xrange实际上在运行时并不是生成静态列表。它使用称为yielding的特殊技术根据需要创建值。该技术与一种称为生成器的对象一起使用。因此如果你有一个非常巨大的列表，那么就要考虑xrange。

## 25. 转换STRING大小写
大写：upper()函数可以将字符串的第一个字母大写。如果字符串在开头已经包含大写字母，那么它将返回原始字符串。
小写：lower()



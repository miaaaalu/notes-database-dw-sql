# 2nd Round Interview 
Overview
- people: Paul Sadler and Altaf Parker
- JD: https://jobs.lever.co/servian/51ef6e63-0411-40c6-9965-d3841462a886
    - ETL/ELT 
    - SQL 
    - Spark 
    - Python 
    - Database, data lake, datawarehousing 
    - ops tool: PagerDuty, StatusPage, Twilio

# Structure: 
- Problem Solving 
- Technical Interview 
    - live sql coding 
    - SQL joins and window functions and CTE
    - Data modelling,Star Schema and Snowflake Schema, Index, SCD Types

- Behaviour Interview 
    - consulting questions 

# Technical Questions:
## SQL
1. [Join](/sql%20-%20knowledge.md)

2. Aggregatio & Window Function
-   `window function`

    Window functions perform calculations on a set of rows, and **return a signle value for each row**.

    Window using the `over()`clause, also can partition data on one or more columns.

    Common Windown: Sum, Row Number, Rank, Dense Rank, Lag, Max

-   `Aggreation function`

    Aggregate function performs calculation on a set of values, and **returns a single value**. 
    
    Except for COUNT(*), aggregate functions ignore null values. Aggregate functions are often used with the GROUP BY clause of the SELECT statement.

-   `区别`

    unlike the aggregate functions, windowing functions do not collapse the result of the rows into a single value. Instead, all the rows maintain their original identity and the calculated result is returned for every row.
    
    Window Function仅仅只会将结果附加到当前的结果上，它不会对已有的行或列做任何修改。而 Aggreation Function 仅仅会保留一行聚合结果。

3. 当table里出现空值的时候，有几种可能的处理方式，各自的优缺点是什么，你为什么要选择这种方式
- 查询空值
    -  `is null`. WHERE column_nameN IS NULL
- 处理空值
    - `ISNULL()`  The ISNULL() function takes two parameters and it enables us to replace NULL values with a specified value: `ISNULL (expression, replacement)`
    - `COALESCE()`: The COALESCE() function takes unlimited parameters and returns the first non-null expression in a list.
 
4. 是否用过matillion，讲解一下
    - 一个数据解决方案，用于ETL

5. 请讲一下对hashing和数据结构的了解

- 哈希表是一种数据结构，用于对数据库执行插入、删除和操作存储在数据库中的值等操作。哈希表存储了数据集的键值，由于这些键值，我们在已知时间从数据库中检索数据。

6. cross join and outer join 
- `CROSS JOIN` is simply `Cartesian Product` of two tables, not associate of any filter or any condition.
- `UNION JOIN`  combines the result-set of two or more tables, and combine data into `distinct rows`.

## Database 
1. Normalization, 怎么做normilization
- Normalization. Normalization is the process of reorganizing data in a database so that it meets two basic requirements:
    - There is no redundancy of data
    - all data is stored in only one place.
    - Data dependencies are logical
    - all related data items are stored together.
- 1NF
    - Each cell must contain only a single (atomic) value.
    - Every column in the table must be uniquely named.
    - All values in a column must pertain to the same domain.
- 2NF
    - Based on 1NF
    - Each non-key attribute must be related to the primary key
- 3NF 
    - Based on 2NF
    - Each non-key must be directy depend on the primary key


2. 关系数据库和非关系数据库区别
关系型和非关系型数据库的主要差异是数据的存储方式。

- 关系型数据是表格式的，因此存储在数据表的行和列中。数据表可以彼此关联协作存储，也很容易提取数据。
- 非关系型数据不适合存储在数据表的行和列中，而是大块组合在一起。非关系型数据通常存储在数据集中，就像`文档`、`键值`对或者图结构。你的数据及其特性是选择数据存储和提取方式的首要影响因素。

3. scd2是什么
知不知道SCD，如何update SCD table， 这里给了一个情境，每分钟有1tb的数据从source table传到staging table，会有什么可能的问题，如何应对，如何设计solution来update SCD table，这里的solution包括表的设计，代码的思路，非常详细。如果这个table没有primary key，你如何知道这个数据是否已经存在或是有更改？这部分你说什么他就在屏幕上打出来，然后跟据你的回答一步步的challenge你的答案，非常烧脑的过程。

- SCDII 
Slowly changing Dimensions指的是维表中的维度字段值会随着时间或业务调整

- 如何update SCD table

4. 数据仓库的概念，怎么做数据仓库
- 用于存储和管理数据的关系数据库
- 用于准备分析数据的提取、加载和转换 (ELT) 解决方案
- 统计分析、报告和数据挖掘功能


5. 什么是数据模型，你使用过什么数据模型?

6. 什么是柱状数据库?

## Cloud 
1. snowflake competitor 

2. snowflake datalake 和 s3作为data lake的区别

3. 是否用过snowflake，有什么特点

4. 如何说服用户用s3作为data lake.

5. 如何在云平台上部署API ?


## Other
1. ETL和ELT的区别是什么，分别的优点和缺点是什么, 什么情况下会考虑其中之一而不是另一个

2. correlation 和 causation区别

3. ad-hoc
印象中是给了一个树形的公司结构，每个分支点是一个分公司，如何算出公司的revenue。如果有类似的结构的公司B跟这个公司A合并了，这时候table如何设计才能结合两个公司的的情况设计报表。


# Behaviour Questions:
1. 如果你是一个Consultant，如何帮助非技术背景下的人解决问题？

2. 面对Client，你给予更多的数据，还是更少的数据
- 更多的数据

3. Functional dependency 

4. 为什么想加入Servian
- 云是一个趋势，Servian在云的架构比较多
- Servian的culture非常好，L&D的结构非常好，对于我的成长比较好
- 项目机遇。 Servian是一个

5. Client Side 
- User requirements 
- problem sovling 
- managing expection 

6. 树状数据的扁平化
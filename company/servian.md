# Technical Questions:
## SQL
### JOIN
[Join](/sql%20-%20knowledge.md)

### Aggregatio & Window Function
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

### 空值
当table里出现空值的时候，有几种可能的处理方式，各自的优缺点是什么，你为什么要选择这种方式
- 查询空值
    -  `is null`. WHERE column_nameN IS NULL
- 处理空值
    - `ISNULL()`  The ISNULL() function takes two parameters and it enables us to replace NULL values with a specified value: `ISNULL (expression, replacement)`
    - `COALESCE()`: The COALESCE() function takes unlimited parameters and returns the first non-null expression in a list.
 
### 是否用过matillion，讲解一下
    - 一个数据解决方案，用于ETL

### 请讲一下对hashing和数据结构的了解

- 哈希表是一种数据结构，用于对数据库执行插入、删除和操作存储在数据库中的值等操作。哈希表存储了数据集的键值，由于这些键值，我们在已知时间从数据库中检索数据。

### cross join and outer join 
- `CROSS JOIN` is simply `Cartesian Product` of two tables, not associate of any filter or any condition.
- `UNION JOIN`  combines the result-set of two or more tables, and combine data into `distinct rows`.

## Normalization
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

## 关系数据库和非关系数据库区别
关系型和非关系型数据库的主要差异是数据的存储方式。

- 关系型数据是表格式的，因此存储在数据表的行和列中。数据表可以彼此关联协作存储，也很容易提取数据。
- 非关系型数据不适合存储在数据表的行和列中，而是大块组合在一起。非关系型数据通常存储在数据集中，就像`文档`、`键值`对或者图结构。你的数据及其特性是选择数据存储和提取方式的首要影响因素。

## SCD

### **What is a Slowly Chaning Dimension?**
- SCD is a dimension that stores and manages both current and historical data over time in a data warehouse. 
- It is considered and implemented as one of the most important ETL tasks in tracking the history of dimension records.
- There are six types of SCDs and we can use Warehouse to define, deploy, and load them, the common type are:
    - `SCD Type I` . The new data overwrites existing data. This is the default type of dimension we create. 
    - `SCD Type II`. SCD II is widely used to process dimensional data with all historical information. Each change in dimensions will be recorded as a new row configurated valid time period which usually on the date granularity. Each record contains the `effective time` and `expiration time` to identify the time period between which the record was active.

### **如何update SCD table**
Solution
- Update SCD I Table. 使用Update直接更改数据
- Update SCD II Table. 保留历史数据，也记录当前数据，并更改时间戳。

Coding
- 手动化修改应该不难，没找到自动化的解决方案。

### **情境 1**
每分钟有1TB的数据从source table传到staging table，会有什么可能的问题? 如何应对? 

可能发生的问题
- Out of Memory. 传输过程中，内存不足，导致中断错误

解决方案
- 尽可能减少日志记录，避免将不必要的数据写入事务日志
- 避免一些不必要的属性（列）
- 分区（Partition）传送。


### **情境 2**
如果这个table没有primary key，你如何知道这个数据是否已经存在或是有更改？这部分你说什么他就在屏幕上打出来，然后跟据你的回答一步步的challenge你的答案，非常烧脑的过程。


## 数据仓库
### Concept
- 用于存储和管理数据的关系数据库
- 用于准备分析数据的提取、加载和转换 (ELT) 解决方案
- 统计分析、报告和数据挖掘功能

> Data Warehouse is a type of data management system that is designed to enable and support Business Intelligence activities, especially analytics.

数据仓库的核心：Reporting 和 Analyticals

### 怎么做数据仓库？
Answer:

## 什么是数据模型，你使用过什么数据模型?
> Entity-Relationship Diagram displays the relationships of entity set stored in a database, is generally transformed and enhanced through **normalization** principles. 

ER Diagram 是 Data Modelling 的一种，定义了数据库逻辑方面的架构，即你的 Table 如何去分布。

Data Model Steps 
- Identify all entities 
    - Entity: customer 
    - Entity: product
- Identify all relationships 
    - relationship between customer and product 
- Determine Cardinality for each. 
    - Cardinality表示层级
    - 例如一个customer会购买一个产品，即1:1的关系。购买多个产品，即1：Many的关系
- Determine Optionality for each 
    - 即1:0的关系。是否只有购买产品才能成为用户?不一定
- Label all relationships 
- Tidy up
    - 填冲每个实体的属性（即column），例如customer里包括姓名，地址，电话, 出生年月等等

Conceptual schema, Logical schema, Physical schema

## 什么是柱状数据库? (columnar database)
Answer:
- 列式数据库是一种数据库管理系统（DBMS），该数据库将数据存储在列中而不是像关系DBMS一样存储在行中。
- 列式数据库是有益的，因为可以对数据进行高度压缩，从而可以快速执行列式操作。 

A columnar database is a database management system (DBMS) that stores data in columns instead of rows. The purpose of a columnar database is to efficiently write and read data to and from hard disk storage in order to speed up the time it takes to return a query.

![](https://i.ytimg.com/vi/wYl_YxqTof4/maxresdefault.jpg)

# Cloud 
## snowflake competitor 
Top competitor include BigQuery(cloud), Redshift(Cloud)

## snowflake datalake 和 s3作为data lake的区别
https://visualbi.com/blogs/featured/whats-preferred-data-lake-snowflake-vs-amazon-s3-vs-delta-lake/ 

## 是否用过snowflake，有什么特点
- `纯粹的SaaS服务体验`。用户不需要购买机器、雇佣数据库管理员或安装软件。用户要么已经在云中拥有数据，要么上传数据。然后，他们可以使用Snowflake的图形界面或ODBC等标准化接口立即操作和查询数据。与其他数据库即服务（DBaaS）产品不同，Snowflake的服务覆盖了整个用户体验。用户无需调优，无需物理设计，无需存储整理任务。
- `经济节约`。Snowflake具有很高的计算效率，所有的表数据都被压缩。用户只为他们实际使用的存储和计算资源付费。
- `安全`。所有数据包括临时文件和网络流量都是端到端加密的。没有用户数据暴露在云平台上。此外，用户能够基于角色在SQL级别执行级别细粒度的访问控制。
- 支持存储半半结构化数据
- 弹性。公有云平台几乎能够按需提供无限的计算和存储资源，存储和计算资源可以独立无缝地扩展，而不影响数据可用性或并发查询的性能。

https://docs.snowflake.com/en/user-guide/intro-supported-features.html 

## 如何说服用户用s3作为data lake
https://docs.aws.amazon.com/whitepapers/latest/building-data-lakes/amazon-s3-data-lake-storage-platform.html 

## 如何在云平台上部署API ?

# Other
## ETL和ELT
 ETL和ELT区别是什么，分别的优点和缺点是什么, 什么情况下会考虑其中之一而不是另一个

2. correlation 和 causation区别

3. ad-hoc
印象中是给了一个树形的公司结构，每个分支点是一个分公司，如何算出公司的revenue。如果有类似的结构的公司B跟这个公司A合并了，这时候table如何设计才能结合两个公司的的情况设计报表。

# Behaviour Questions:
## 如果你是一个Consultant，如何帮助非技术背景下的人解决问题？
如果正在与投资者或非技术人员交谈, 很多时候，非技术人员不一定想要深入了解问题。他们真正想要的是了解一些基本的东西：
- 这对我们的客户有何影响？
- 这需要多长时间才能修复？
- 是否会产生与此相关的任何费用？

可以将问题归结为这些核心组件，而不是解释技术细节。

例如：

“代码存在问题，因此用户无法执行操作A。我已经找到问题所在，大约需要X 天才能解决。我们还需要升级到下一级的 AWS，这将花费Z 美元更多一个月。

如果他们想要了解更多细节，可以：
- Use some visual content to explain technical info and process 
- Avoid technical jargon when possible, like GCP or DBMS
- 观察你的听众。

## 面对Client，你给予更多的数据，还是更少的数据
- 更多的数据

## Functional dependency 

## 为什么想加入Servian
- 云是一个趋势，Servian在云的架构比较多
- Servian的culture非常好，L&D的结构非常好，对于我的成长比较好
- 项目机遇。 Servian是一个

## Client Side 
- User requirements 
- problem sovling 
- managing expection 

## 树状数据的扁平化
## 数据湖
数据湖，是一种架构，由“数据存储架构 + 数据处理工具”组成的解决方案
- 数据存储架构: 例如S3， 可以存放历史的、实时的，在线的、离线的，内部的、外部的，结构化的、半结构化的，非结构化的数据
-  数据处理工具： 如何将数据搬到湖里，如何对数据进行治理，如何提取数据和转化数据

## 数据仓库
![](https://www.smartcity.team/wp-content/uploads/2021/08/640-82.png)
数据仓库(Datawarehouse)的特点是：
 - 相对简单的(Denormalized)表格结构，存储结构相对松散，多冗余数据。
 - 一般只是读优化。
 - 相对复杂的read query，单次作用于相对大量的数据（历史数据）。

# 数据库
数据库(Database)的特点是：
- 相对复杂的表格结构，存储结构相对紧致，少冗余数据。
- 读和写都有优化。
- 相对简单的read/write query，单次作用于相对的少量数据。

# 数据质量 
- 完整性（Completeness）：Null value in dataset 
- 唯一性(Uniqueness)：Duplicate or redundant data
- 有效性：为了使数据有效，它需要以在值域内一致的格式呈现。例如，在采用 MM-DD-YY 格式的日期属性中，任何采用 YYYY-MM-DD 格式的日期都是无效的，即使该日期实际上是准确的。
- 一致性(Validity)：当预期的数据不相等时。例如，计费中的客户记录显示 Bob 的地址是 123 Main St，但 CMS 的帐户记录显示其地址是 489 James St。这是一个人为的例子，还有更微妙的原因可以根据上下文和数据被认为是不一致的。领域。
- 参照完整性(Consistency)：当数据通过外键或其他不太明确的关系引用其他数据，但该数据丢失时。这与主数据管理 (MDM) 的概念有关。
- 准确性()：只是不正确的数据值。它可能是从错误的源中提取的、已损坏的，或者只是在源系统中输入错误。
- 合规性：数据可能是上述所有内容，但不合规。好像没那么重要？现在你有一个明文信用卡号流过你的数据管道，被写入日志文件等等。哎呀。
- 及时性：当可用性或延迟问题阻止数据对其预期用途有价值时。根据用例和数据的不同，及时性预期可能从几分钟到无限变化。

## 数据库三大范式（1NF,2NF,3NF）
1NF, in relatiship models:
- 同一列不能有多个值，或者不可重复
- 每列都是不可再分的数据单元

2NF, based on 1NF
- 所有非键的属性是完全功能性的依赖于主键
- 一个表只能描述一件事情

3NF, based on 2NF
- 所有非键的属性是主键直接相关，而不是间接相关




## What is star schema, in brief?
- Star schema is also called the star join schema 
- one of the simple shcemas in the concept of Data Warehousing 
- Structure resembles a star that consists of fact tables and associated dimension tables 
- It is widely used when working with large amounts of data. 

Snowflake Schema 
- a primary extension of the star schema with the presence of more dimensions 
- spanned across as the structure of a snowflake, hence the name 
- data is structured here 

Difference between star shcema and snowflake schema 
 
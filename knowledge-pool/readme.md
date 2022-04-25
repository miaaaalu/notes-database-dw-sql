# History Overview 
1. [1970s RDBMS & ER Diagram](#1970s-rdbms--er-diagram)
2. [1980s Database、Data Warehouse、Data Partitioning](#1980s-databasedata-warehousedata-partitioning)
3. [1990s Databases & ETL](#1990s-databases--etl)
4. [2000s NoSQL & Big Data](#2000s-nosql--big-data)
5. [2010s Cloud、Data Lake、MPP Data Warehouse、Data Orchestration](#2010s-clouddata-lakempp-data-warehousedata-orchestration)

# 1970s RDBMS & ER Diagram
## RDBMS
主要由以下两个部分构成： 
- Database. Store purpose
- Instance. Computation Power 
![](/knowledge-pool/assets/database-server.png)

## ER Diagram
> Entity-Relationship Diagram displays the relationships of entity set stored in a database, is generally transformed and enhanced through **normalization** principles. 

ER Diagram 是 Data Modelling 的一种，定义了数据库逻辑方面的架构，即你的 Table 如何去分布。

### Data Modelling (ER Diagram)
Data Model Steps 
- Identify all entities and put them on paper
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

## SQL 
求职要求：中级到高级程度，越高级越好。

# 1980s Database、Data Warehouse、Data Partitioning
## Databases
- DB2(IBM)
- Oracle 

## Database - ACID standard 
> ACID refers to a standard set of properties that guarantee database transactions are processed reliably. 

ACID条款是一个标准线，在设计数据库时，用来约束数据库之间的事务（Transaction）是否符合标准
- Atomicit. 即不可分割性，事务中的操作要么全不做，要么全做
- Consistency. 一个事务在执行前后，数据库都必须处于正确的状态，满足完整性约束
- Isolation. 多个事务并发执行时，一个事务的执行不应影响其他事务的执行
- Durability. 事务处理完成后，对数据的修改就是永久的，即便系统故障也不会丢失

## Data warehouse
数据仓库的核心：Reporting 和 Analyticals
- 1992, Bill Inmon, father of data warehousing
- 1996, Ralph Kimball, published **The Data Warehouse Toolkit**

数据库和数据仓库的区别： https://www.zhihu.com/question/20623931 

## Database Design - Partitioning 
> 分区(Partitioning)是为了缓解大数据情况下磁盘IO问题。

背景：当数据量较大时，存储的物理文件会变得非常大、使用性能很差。

解决思路: 拆表、减少单表数据量，将一个table分成各个独立的文件，这样就不用一次扫描很多数据，数据库运行的效率也会高很多。

拆分策略：

1. 水平分区（Horizontal partitioning，也叫 Sharding）：按行拆分，把不同的行放入不同的表中

2. 垂直分区（Vertical partitioning）：按列拆分，把一些列放到其它表中

3. 按功能分区（Functional partitioning，也叫 Federation）：按业务功能拆分，把业务领域中属于相同界限上下文（Bounded Context）的数据放在一起

Database Partitioning_系统设计笔记: http://www.ayqy.net/blog/database-partitioning/ 

![](/knowledge-pool/assets/database-Partitioning.png)

# 1990s Databases & ETL
## 出现了不同的数据库：
 - SQL Server
- Open Source Database 
    - MySQL
    - PostgreSQL
    - MariaDB
- Enterprise Product 
    - Teradata 
    - SAP

## ETL 

# 2000s NoSQL & Big Data 
## The Evolution of NoSQL
Type of NOSQL
- Key-Value
- Column Oriented 
- Document Stored 
- Graph Based 

Choose NoSQL if you have or need:
- Semi-structured or Unstructured data 
- No complex queries 
- High velocity transactions 
- Requires distributed computing and storage 
- NO Data Warehouse, Analytics or BI User cases 

## Big Data 
### 核心概念： 
- `Volume`: volume过大后，数据库无法handle，所以需要Data Warehouse
- `Velocity`: 处理实时数据
- `Variety`: Internet兴起，有了Json，XML, Document数据

### Hadoop 
> Hadoop is an open-source framwork that allows to store and process big data in a distributed environment across clusters of computers using simple programming models. 
- Hadoop MapReduce 
- Hadoop HDFS

### Spark
> 由于Hadoop的处理速度较慢（硬盘处理），所以诞生了Spark, Spark采用的是内存处理（In-memory)

Apache Spark is a unified analytics enginee for large-scale data processing.
- Speed: Run workloads 100x faster. 
- Ease of Use: support Java, Sacala, Python, R, SQL
- Generality: support streaming and analytics 

Desoupling Storage & Compute是Spark的一个重要概念，传统的Oracle数据库需要先将数据载入库中，然后计算。反之，Spark支持了存储与计算的分离，数据可以先存放到储存库中（例如S3），然后再计算。

# 2010s Cloud、Data Lake、MPP Data Warehouse、Data Orchestration
## Cloud Computing 
云端处理数据的好处：
- Scalability. 很容易去Sacale，可以用100个cluster去处理数据，也可以用1000个cluster处理数据
- Manageability 
- Agility 
- Lower cost: 不使用时不计费

## Data Lake
> A data lake is a centralized, curated, and secured repository taht stores all your data, both in its original form and prepared for analysis .

数据库、数据湖、数据仓库、湖仓一体： https://www.smartcity.team/consultingskills/experience/shujukuyushujuhu/

数据湖（Data Lake） 总结： https://zhuanlan.zhihu.com/p/91165577 

## MPP Data Warehouse 
- Snowflake 
- Presto 
- Redshift
- Azure Synapse Analytics 
- Big Query 

## Data orchestration/pipelines 
- Support Python 
- Git Integration 
- Monitoring via Grafana
- Log back up 

Tools: Airflow, AWS Step Functions, Azure Data Factory, Google Cloud Composer

# LINK 
100个大数据常用中英文: https://zhuanlan.zhihu.com/p/99181726 
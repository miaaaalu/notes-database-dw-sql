# Big Data Concept
- HDFS 分布式文件系统
- Yarn 资源管理器
- Spark Core / MapReduce 计算引擎
- APIs 服务商
    - SparkSQL + Hive (SQL + Fake DW)
        - MySQL/PostgreSQL/Oracle
    - Spark Streaming 
    - GraphX、MLLib 机器学习
![](/knowledge-pool/assets/Big-data-concept.png)

 # Apache Spark 
 Apache Spark is a unified engine designed for `larage-scale distributed data processing`, on premises in data centers or in the cloud.

 ## Four Core APIs:
- SparkSQL (DataFrames、RDD)
- Spark Streaming (Structured Streaming)
- GraphX (Graph Processing)
- MLlib (Machine Learning)

## RDD & DataFrame
 RDD：弹性分布式数据集，是一种只读分区数据
Dataframe：类似于关系数据库里面的表结构。
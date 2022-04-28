# Data Warehouse 
> Data Warehouse is a type of data management system that is designed to enable and support Business Intelligence activities, especially analytics. 

Work Flow on Data Warehouse
- Data Sources. 
    - Internal
    - External 
- Staging Area. 
    - Staging Layer or Staging Table 
- Warehouse. 
- Data Marts. 
    - Data Mart的概念可以理解为Filter，仅将某个部门需要的信息放给利益相关者，不相关的信息他们也无法访问。
- Users 
    - Analytics
    - Reporting
    - Mining 

## Database and Data Warehouse Overview (For SQL)
- Traditional RDBMS: Oracle, Microsoft SQL Server, IBM DB2, MySQL
- [MPP Database](https://www.integrate.io/blog/what-is-an-mpp-database/): Teradata(on-premise), BigQuery(cloud), Snowflake(cloud)
- In Memory Database (IMDB): Sap Hana, Redis, Exasol
- Big Data: Hive, SparkSQL, ClouderaIMPALA

# Data
![](https://o.quizlet.com/hkiJxm0RPni1ntAesC4fdA.jpg)

# Primary Text Based Info Type 
- Unstructured data (process by ML)
    - Social media comments 
    - Online News 
    - Digital books  
- Semi-structured datae
    - XML 
    - JSON
- Structured data 
    - Database 

# Data Modelling (ER Diagram)
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

## ER Model to Relational Model 
- Mapping Entity 
    - Create table for each entity 
    - Attribues --> Fields of Tables (with respective data types)
    - Declare primary key   
- Mapping Relationship 
- Mapping Weak Entity Sets 
- Mapping Hierarchical Entities 

# Database Normalization 
> - Normalization is the process of organizing the data in the database.
>
> - Normalization is used to minimize the redundancy from a relation or set of relations. It is also used to eliminate undesirable characteristics like Insertion, Update, and Deletion Anomalies.
>
> - Normalization divides the larger table into smaller and links them using relationships.
> - The normal form is used to reduce redundant (repetitive) data and ensure data is stored logically.

### Aiming to resolve  
- Data Redundancy 
- Insertion Anomaly 
- Updation Anomaly 
- Deletion Anomaly  
  
### 1NF (First Normal Form)
- Each table cell should contain a single value.
- Every column in the table must be uniquely named.
- All attributes are dependent on the primary key (All values in a column must pertain to the same domain)
    - Product_id --> Product_Name
    - Customer_id --> Customer_Name, Customer_phone, ...

### 2NF (Second Normal Form)
- Based on 1NF 
- All non-key attributes are fully functional dependent on the primary key. 所有非键的属性是完全功能性的依赖于主键

### 3NF (Third Normal Form)
- Based on 2NF 
- There are no Transitive Dependency. 所有非键的属性是主键直接相关，而不是间接相关(Transitive Dependencies)

### BCNF 

# Slowly Changing Dimension 
- SCD I 
    - 小作坊保留信息的方式，不做任何记录保留，一旦信息来源，就会over-write从前的记录
- SCD II 
    - 将历史信息保留在Dim Table里面
    - Effective_Date, Expiry_Date, Current Flag 

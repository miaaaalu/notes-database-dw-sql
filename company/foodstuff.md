# Overview 
- Role: Customer Data Engineer 
- First Round: Robbie Hammond (Customer Insight Analyst)
- Keyword for Job Description 
    - Data Insight 
    - Data Visualisation 
    - Data Source: Transactional Data, CRM, 3rd Party Data
    - BI Reporting
    - Data Mining 
    - Data Intergration 

## Data Intergration 
**Snowflake**
- Internal Stage. Data Has been stored in Snowflake, we can do a ETL、Data Streaming、Data Automation to intergreated data in next level. 
- Extrnal Stage. 
    - Thrid Party (Google Analytics)
    - Extrnal Data (Mysql/Big Query)
    - S3 Bucket 

**AWS**
- Internal Stage 
    - S3 
    - DynamoDB
    - EC2 Instance 
- External Stage 
    - GA 
    - Saleforce 

## Tableau 
1. Tableau有什么优势？
- 高性能，因为它可以处理数百万行数据而没有任何复杂性。
- 将获得不同类型的可视化。 
- 低成本的解决方案。 

2. 使用Tableau的挑战
使用此工具，你只能进行基本的`预处理`和`更改数据类型`。理想情况下，如果想将数据导出到完美的表中，因此需要数据清理，这需要额外的工具在加载前对数据进行预处理。 

3. Parameters 
- Parameters can make our views more interactive. 

4. Tell me something about measures and dimensions
- In Tableau, when we connect to a new data source, each field in the data source is either mapped as `measures` or `dimensions`. These fields are the columns defined in the data source. 

- Measures contain `numeric values` that are analyzed by a dimension table. Measures are stored in a table that allows storage of multiple records and contains foreign keys referring uniquely to the associated dimension tables.

- Dimensions contain `qualitative values` (name, dates, geographical data) to define comprehensive attributes to categorize, segment, and reveal the data details.

5. What are continuous and discrete field types?

- continuous means without interruptions  
    - like total_revenue 
    - can't be sorted 
- discrete means are individually separate and distinct
    - like Product_id 
    - can be sorted 

6. What is aggregation and disaggregation of data?
- Aggreation: SUM, AVG, MIN, MAX ...
- disAgrretion: display each filed separately 

7. Data Connect on Tableau 
- connect and join various sheet in an csv/excel file 
- connect adatabase by useing database connector. 

8. Set in Tableau 
Set作为 Tableau Desktop 中数据子集创建的自定义字段。Set可以根据条件计算，也可以根据数据源的维度手动创建。
例如，一组收入超过某个价值的客户。现在，集合数据可以根据应用的条件动态更新。

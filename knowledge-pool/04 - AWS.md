# IAM 
## Key Features 
- Centralized control of your AWS account 
- External Access Sharing: Snowflake, Local Environment 
- Identify Federation (Login in by company email, social account)
- Password rotation policy 
- AWS Services Integration: share access to across services 

## Key Compoents 
- Users
    - Who: employee
    - Services: Kafka, SnowFlake
    - How: Access ID(access API, CLI, SDK..), Password (access console)
- Groups: 
    - Who: DE Group, Dev Group, Finance Group
    - How: Build a group level permission on different groups 
- Policies 
    - How: made up of documents as JSON
- Roles
    - Services: AWS Services 

# CloudWatch 
- Logs 
- Alarm, by using with `SNS`

# S3  
- Object-based storage 
- Single file upload can be from 0 Bytes to 5 TB
- Support unlimited Storage
- Features 
    - Bucket Versioning for Version Control 
    - Encryption 
- Charagement 
    - Storage 
    - Request. e.g. retrive data 
    - Storage Management Pricing Tags 
    - Data Transfer Pricing 
- Object Property 
    - `S3 Url` using for API
    - `ARN` AWS Source ID 
    - `Ojbect URL` Domin Link 
- Bucket Publicable 
    - step1 unblock bucket permission 
    - step2 make public by ACL

# EC2 (30:41 AWS Computing)
EC2 全称是弹性计算云（Elastic Compute Cloud), 可以快速开发/部署应用，配置安全，网络，以及存储。

## 功能
- `Instance`: 虚拟计算环境
- `AMI`(Amazon Machine Images): Amazon 系统映像，EC2环境的一个预配置
- `Instance type`: instance的存储，CPU，内存，存储，网络，地位
- `Key pair`: 用于安全登录你的instance（Amazon保存piublic key,你需要小心保存自己那份private key）
- `Instance store volumes`: 临时数据（停止、休眠或终止实例时会删除这些数据）的存储卷
- `EBS`(Amazon Elastic Block Store)：持久性存储卷，长期存储数据
- `Regions AZ` 给你的资源多个物理地址
- `Security Group` 防火墙，用于定义通信策略，端口，可通信网段
- `Tags` 元数据（metadata）可以与资源绑定
- `(VPCs)virtual private clouds` 虚拟网络，你可以配置用于和你自己的网络通信

## Charagement 
三种支付方式
1. pay a fixed rate by hour 
2. pre-pay 
3. Autction 竞价付费

# Lambda 
Event-Driven Service 
- Extraction Data 
- unzip or loading data 
- Transfore Data 
- work with SNS 
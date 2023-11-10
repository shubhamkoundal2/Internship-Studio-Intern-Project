CREATE DATABASE RetailSalesData;
USE RetailSalesData;

Create Table Sales_Data_Transactions (
customer_id varchar(255),
trans_date varchar(255),
tran_amount INT);

Create Table Sales_Data_Response (
customer_id varchar(255) Primary key,
response INT);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Transactions.csv'
into table Sales_Data_Transactions
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;


explain select * From Sales_Data_Transactions where Customer_ID= 'C55295';


CREATE INDEX idx_id ON Sales_Data_Transactions(CUSTOMER_ID);

explain select * From Sales_Data_Transactions where CUSTOMER_ID= 'C55295';


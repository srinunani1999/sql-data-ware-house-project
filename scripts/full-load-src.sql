/*
--load the src tables from source files(csv) file

we are using full load = Truncate + bulk insert approach to load the tables

we truncate because if data changes in src changes we first deleet all the data and bulk insert all of them
*/



use datawarehouse;
GO

TRUNCATE TABLE bronze.crm_cust_info
BULK INSERT bronze.crm_cust_info 
FROM '/data/source_crm/cust_info.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

select count(*) from bronze.crm_cust_info 
------
TRUNCATE TABLE bronze.crm_prd_info
BULK INSERT bronze.crm_prd_info 
FROM '/data/source_crm/prd_info.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

select count(*) from bronze.crm_prd_info 



--------------

TRUNCATE TABLE bronze.crm_sales_details
BULK INSERT bronze.crm_sales_details 
FROM '/data/source_crm/sales_details.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

select count(*) from bronze.crm_sales_details 



-----------

TRUNCATE TABLE bronze.erp_cust_az12
BULK INSERT bronze.erp_cust_az12
FROM '/data/source_erp/CUST_AZ12.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

select count(*) from bronze.erp_cust_az12 

-----------------


TRUNCATE TABLE bronze.erp_loc_a101
BULK INSERT bronze.erp_loc_a101
FROM '/data/source_erp/LOC_A101.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

select count(*) from bronze.erp_loc_a101 

------------------------

TRUNCATE TABLE bronze.erp_px_cat_g1v2
BULK INSERT bronze.erp_px_cat_g1v2
FROM '/data/source_erp/px_cat_g1v2.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

select count(*) from bronze.erp_px_cat_g1v2 

To run the full Project:

1. Get Google Cloud Account and set up all required permissions for API and roles

2. Download the access keys and save them in a file in a named access-keys.json in the dags folder

3. Create Google Cloud Infrastructure (Bucket/DB) using provided main.tf and terraform.tfvars using Google Cloud Console Terminal

4. Run dockers and use provided docker-compose file to create Airflow

5. Trigger Airflow. First the the csv file will be download from the url by BashOperator. It will be saved in dags folder and will be renamed as
20240203.csv for example depending on run date

6. Airflow will perform ETL and save the csv file as employee_hr_data20240203.csv in the dags folder

7. Next this file will be pushed to Bucket

8. Next the Table will be created if it did not exist and data from Bucket will be loaded in the hrdb.hrdata table

9. Looker Report can then be refreshed to show updated data 






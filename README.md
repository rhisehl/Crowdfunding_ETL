# Crowdfunding ETL Pipeline

## Importing Data: Category Information

Import the Excel file into Jupyter Notebook. Convert needed column to string data type.

![image](https://user-images.githubusercontent.com/116215793/227077469-0ccb4aca-89ea-4402-98cb-5721c5ef23f7.png)

## Transforming the Data

Split the Category & Subcategory column into two different columns.

![image](https://user-images.githubusercontent.com/116215793/227077798-079da7bd-5529-40b1-acee-be327eca280b.png)

Separate the unique values for categories and subcategories, then create a list of category IDs, which are a numeric representation of the unique categories (repeat for subcategories as well).

![image](https://user-images.githubusercontent.com/116215793/227077985-fdfc02da-2dcb-42e9-9489-dfc8b20464b4.png)

Create dataframes showing the category and subcategory IDs as well as their respective names, then export as CSV files.

![image](https://user-images.githubusercontent.com/116215793/227078154-53c26ede-ad18-4ca5-9d06-8ce826ec0598.png)

## Importing the Data: Campaign Information

Copy the original dataframe to begin transforming the campaign information.

## Transforming the Data: Campaign Information 

Rename columns and covert data types to floats as needed.

![image](https://user-images.githubusercontent.com/116215793/227078474-e52dee20-9d35-4708-8ac9-7f92f6da0be2.png)

Convert date-time columns to date-time format for later analysis.

![image](https://user-images.githubusercontent.com/116215793/227078561-4b84af4e-1359-4f6e-9ffe-3fc857d8ac8c.png)

Merge the dataframe on the category and subcategory dataframes to show the category IDs, then delete unwanted columns.

![image](https://user-images.githubusercontent.com/116215793/227078727-f2c9b0d2-6413-4139-8dc4-07cf091d348b.png)

## Importing the Data: Contact Information

Import the contacts Excel file

## Transforming the Data: Contacts 

Create a dataframe, split the name column into first and last name, then reorder the columns and export the dataframe to CSV.

![image](https://user-images.githubusercontent.com/116215793/227078992-c310b884-e200-4cc5-b07a-89e9d6cc2e98.png)

##Optional:
The contacts dataframe can also be created using RegEx, see code for this example. 

## Adding to PostgreSQL

Create the following Entity Relationship Diagram

![QuickDBD-Crowdfunding_ERD](https://user-images.githubusercontent.com/116215793/227079192-f91df3c4-e649-4221-bd48-8038d1cc7359.png)

Add the information to PostgreSQL as shown in the ERD SQL file



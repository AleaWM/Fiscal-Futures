# Fiscal-Futures

Yearly files from the Illinois Comptroller are in the `revenue` and `expenditures` folders. 
These were acquired through a Freedom of Information Act (FOIA) request. The files within these folders are before cleaning or recoding the data.

The revenue and expenditure files for each fiscal year are combined into files `allrev22.csv` and `allexp22.csv`. 
After the latest fiscal year ends and the data is received from the Comptroller, it is added to the `allrev` or `allexp` files.
These combined files are NOT to be used for summarizing or analyzing the State's finances because they have NOT been cleaned or recoded.

Partially cleaned and recoded data can be found in the `exp_temp` and `rev_temp` files. Old or renamed agencies and new or reused funds have been recoded in these files but observatins that are dropped in the analysis remain in these files. 

A summary file containing aggregated yearly expenditure and revenue values for categories used in the Fiscal Futures model can be found in the  `summary_file_FY2022.xlsx` excel file. This excel file also contains additional tabs for all CAGR values calculated as well as the yearly change between the most recent fiscal year and the previous fiscal year. 

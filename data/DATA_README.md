# Data Folder Details

The rawest data available is in the data_RAW folder. *(coming soon)*

Intermediate stages of data available:

-   `allrevfiles.csv` (and `allexpfiles.csv` are the combined files received from the comptroller for fiscal years 1998-2022

    -   These files do not have their agencies or funds recoded consistently over time. They do not have clean labels to go with the number of each agency, fund, org, etc.

    -   Close to raw data but some years had additional variables created to indicate Transfers or Object numbers. Many observations still need to be joined to "funds" or "sources" files to have descriptive name variables.

-   exp_temp and rev_temp

    -   Cleanest version of data before aggregating totals or dropping observations not included in the Fiscal Futures fiscal gap calculation. All years in one file. Funds and agencies should have numbers and consistent labels. Includes the "Group" variable used in the FF Annual Report used for calculating expenditures by function.

## Additional information

-   Keys for for org/source/fund/agency/etc. numbers and labels can be found in the `"…._2022_codebook tables.xlsx"` files.
-   `ioc_sources.xlsx` has Illinois revenue source numbers and labels updated through FY22
-   `funds_ab_in.xlsx` has Illinois funds and their labels with all changes in fund purpose updated through FY22

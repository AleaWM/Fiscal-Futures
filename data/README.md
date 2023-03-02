# Data Folder Details

The rawest data available is in the data_RAW folder.

Intermediate stages of data available:

-   `allrevfiles22.csv` and `allexpfiles22.csv` are the combined files received from the comptroller for fiscal years 1998-2022

    -   These files do not have their agencies or funds recoded consistently over time. They do not have clean labels to go with the number of each agency, fund, org, etc.

    -   Close to raw data but some years had additional variables created to indicate Transfers or Object numbers. Many observations still need to be joined to "funds" or "sources" files to have descriptive names to go with their agency/fund/source/etc. numbers.

-   `allexp_fy22_recoded.csv` and `allrev_fy22_recoded` are probably the best for any researchers trying to use this data in their own projects.

    -   Cleanest version of data before aggregating totals or dropping observations not included in the Fiscal Futures fiscal gap calculation. All years in one file. Funds and agencies should have numbers and consistent labels. Includes the "Group" variable used in the FF Annual Report used for calculating expenditures by function.
    -   To do: Add group names to go with group number code. Done after pivoting and merging in normal Fiscal Gap calculation code.
    -   Created in February 2023. Still checking accuracy.

-   `exp_temp` and `rev_temp`

    -   Used in fiscal gap calculation. Data is cleaned and coded up to the point right before aggregating category totals. Drops observations we do not keep in fiscal gap calculation.

## Additional information

-   Keys for for org/source/fund/agency/etc. numbers and labels can be found in the `"…._2022_codebook tables.xlsx"` files.
-   `ioc_sources.xlsx` has Illinois revenue source numbers and labels updated through FY22
-   `funds_ab_in.xlsx` has Illinois funds and their labels with all changes in fund purpose updated through FY22

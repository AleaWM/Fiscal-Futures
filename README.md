# The Fiscal Futures Project

This site contains the methodology, data, and code used to calculate Illinois' Fiscal Gap between yearly expenditures and revenue sources for the Fiscal Futures Annual Report. To learn more about the history of the Fiscal Futures Project and read past reports, please visit [The Fiscal Futures webpage.](https://igpa.uillinois.edu/fiscal-futures-project/) The Fiscal Future Project is one of many research projects within the University of Illinois' [Institute of Government and Public Affairs (IGPA)](https://igpa.uillinois.edu/).

This website was originally created by Alea Wilbur-Mujtaba as an internal document for Fiscal Futures researchers to increase reproducibility and update the methodology documentation used for the Fiscal Futures Annual Report. Until August 2022, The FF Annual Report was calculated in Stata with code and documentation that had been passed on for years and modified in a piece-meal fashion. Alea translated the Stata files into an R file before transitioning into a Github Page with downloadable public data.

While the main purpose of the document is for documenting Fiscal Futures methodology, it also contains useful information on variables used by the Illinois Office of the Comptroller (IOC) that may be of use to other researchers. Frequently discussed topics (e.g. Pensions, Debt, Federal Revenue Sources, Medicaid, etc.) each have their own section dedicated to looking at the many relevant variables for that topic, even if the budget variables re not directly included while calculating the Fiscal Gap.

This is a novel dataset containing all revenue items and all expenditure items from fiscal year (FY) 1998 to FY 2022 received through yearly FOIA requests to the Illinois Comptroller. It can be downloaded in the website's [data folder](https://github.com/AleaWM/Fiscal-Futures/tree/main/data). To the authors' knowledge, the revenue and expenditure data used in the analysis does not exist elsewhere and cannot be downloaded from the Comptroller's website or the Illinois Data Portal in this format.

This document is a good faith effort to increase reproducibility and transparency. It is a living document in which we aim to describe things as clearly as possible in the time we have, share it with others, and improve each time we come back to it.

Read FY22 Fiscal Futures Annual Report [here.](https://igpa.uillinois.edu/) (forthcoming, will update link once published - AWM 2/14/2023)

-   Alea Wilbur-Mujtaba, Francis Choi, and David Merriman. (2023). "Recovering from a COVID (Spending) Fever." Institute of Government and Public Affairs. *Forthcoming*.

If you use code associated with this repository please cite the following work:

> For general use of the data or code provided, please use this citation: Alea Wilbur-Mujtaba. (2022). Institute of Government and Public Affairs. \_\_\_\_\_\_\_\_\_\_\_\_\_

![](images/DataWarehouseB.jpg)

# Github Data Structure

The authors and IGPA believe that these novel datasets will be valuable to other researchers interested in Illinois' finances.

Yearly files from the Illinois Comptroller are in the `data` --\> `revenue` and `expenditures` folders. These were acquired through a Freedom of Information Act (FOIA) request. The files within these folders are **before** cleaning or recoding the data. Most of the files for individual years are saved as .dta files due to using Stata before FY21. These individual yearly files are combined into larger files containing all revenues (`allrev22.csv`) and expenditures (`allexp22.csv`) for all fiscal years.

Partially cleaned and recoded data can be found in the `exp_temp` and `rev_temp` files. Old or renamed agencies and new or reused funds have been recoded in these files but observations that are dropped in the analysis remain in these files. A summary file containing aggregated yearly expenditure and revenue values for categories used in the Fiscal Futures model can be found in the `summary_file_FY2022.xlsx` excel file. This excel file also contains additional tabs for all CAGR values calculated as well as the yearly change between the most recent fiscal year and the previous fiscal year.

*The Fiscal Futures Project is associated with the University of Illinois System Institute of Government and Policy Affairs (IGPA). Creating the R code, Github folder, and website for methodology was done by Alea Wilbur-Mujtaba. Any errors with code or findings are the fault of the author, not the research institute. Data is originally from annual FOIA requests to the Illinois Office of the Comptroller.*

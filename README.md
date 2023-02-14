# The Fiscal Futures Project

This site calculates Illinois' Fiscal Gap between yearly expenditure and revenue. It was originally created as an internal document by Alea Wilbur-Mujtaba to increase reproducibility and document the methodology for the Fiscal Futures Project within the [Institute of Government and Public Affairs (IGPA)](https://igpa.uillinois.edu/).

While the main purpose of the document is for documenting Fiscal Futures methodology, it also contains useful information on variables used by the Illinois Office of the Comptroller (IOC) that may be of use to other researchers. Frequently discussed topics (e.g. Pensions, Debt, Federal Revenue, Medicaid, etc.) each have their own section dedicated to looking at the many relevant variables for that topic, even if the items are not directly included while calculating the Fiscal Gap.

This document is a good faith effort to increase reproducibility and transparency. To the authors' knowledge, the revenue and expenditure data used in the analysis does not exist elsewhere.

# Structure

The authors and IGPA believe that these novel datasets will be valuable to other researchers interested in Illinois' finances.

Yearly files from the Illinois Comptroller are in the `data` --\> `revenue` and `expenditures` folders. These were acquired through a Freedom of Information Act (FOIA) request. The files within these folders are **before** cleaning or recoding the data. Most of the files for individual years are saved as .dta files due to using Stata before FY21. These individual yearly files are combined into larger files containing all revenues (`allrev22.csv`) and expenditures (`allexp22.csv`) for all fiscal years.

Partially cleaned and recoded data can be found in the `exp_temp` and `rev_temp` files. Old or renamed agencies and new or reused funds have been recoded in these files but observations that are dropped in the analysis remain in these files. A summary file containing aggregated yearly expenditure and revenue values for categories used in the Fiscal Futures model can be found in the `summary_file_FY2022.xlsx` excel file. This excel file also contains additional tabs for all CAGR values calculated as well as the yearly change between the most recent fiscal year and the previous fiscal year.

Data processing and scripts associated with the manuscript *Recovering from a COVID (Spending) Fever*. If you use code associated with this repository please cite the following work:

Alea Wilbur-Mujtaba, Francis Choi, and David Merriman. (2023). "Recovering from a COVID (Spending) Fever." Institute of Government and Public Affairs. *Forthcoming*.

> **Figure out citation**

> For general use of the data or code provided, please use this citation: Alea Wilbur-Mujtaba. (2022). Institute of Government and Public Affairs. \_\_\_\_\_\_\_\_\_\_\_\_\_\_

![](images/DataWarehouseB.jpg)

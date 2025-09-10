

*******************************************************************
* this program written by David Merriman on 07_14_2025
* 
**************************************************************************;
*****************************************************
* boiler plate code
*****************************************
set more off
clear
di c(current_date)
di c(current_time) 
di c(sysdir_personal) 
di c(pwd)
di c(adopath) 
*scalar location="igpa"
scalar list
#delimit cr
******************************************************
* 
*****************************************************************
***************************************************************************
* https://blog.stata.com/2020/02/13/adding-recession-shading-to-time-series-graphs/
* to get recession shading data
*  import fred USREC USRECM USRECP
*
* generate datem = mofd(daten
*  set scheme s1color
*  twoway area USRECM datem, color(gs14))  
*  twoway  (area USRECM datem) (tsline UNRATE)
***************************************************************************
clear
* set fredkey 1744dd4a5c09dbcb97c0480913ca38a1, permanent
 freddescribe ILNGSP CPIAUCSL WPSFD49406 ILPOP, detail
 ***********************************************************
 * Gross Domestic Product: All Industry Total in Illinois (ILNGSP)
 * Consumer Price Index for All Urban Consumers: All Items in U.S. City Average (CPIAUCSL)
 * Producer Price Index by Commodity: Final Demand: Government Purchases, Nondefense (WPSFD49406)
 * Resident Population in Illinois (ILPOP)
 ************************************************************
 cd "C:\Users\dmerrim\OneDrive - University of Illinois Chicago\igpa\fiscal futures budget project\2025_2026\annual report on revenue\sales tax stuff"
 import fred ILNGSP CPIAUCSL WPSFD49406 ILPOP
 gen Year=year(daten)
 gen month=month(daten)
 keep if Year>=1998
 tab Year month if month==1
 tab Year month if ILNGSP~=. 
keep if month==1
save "C:\Users\dmerrim\OneDrive - University of Illinois Chicago\igpa\fiscal futures budget project\2025_2026\annual report on revenue\sales tax stuff\il_gsp_cpi_ppi_pop.dta", replace
clear

 *******************************************************************
* this program written by David Merriman on 08/08/2025
*   it analyzes state sales tax data from Fiscal Futures Alea Wilbur
*  
**************************************************************************;
*****************************************************
* boiler plate code
*****************************************
set more off
clear
di c(current_date)
di c(current_time) 
di c(sysdir_personal) 
di c(pwd)
di c(adopath) 
*scalar location="igpa"
scalar list
#delimit cr
******************************************************
clear
import excel "C:\Users\dmerrim\OneDrive - University of Illinois Chicago\igpa\fiscal futures budget project\2025_2026\annual report on revenue\sales tax stuff\summary_file_FY25_pensionsdissolved_2025-08-04.xlsx", sheet("aggregated_fewercategories") firstrow
merge m:1 Year using "il_gsp_cpi_ppi_pop.dta"
tab Category_name
tab Year
encode Category_name, gen(n_Category_name)
xtset n_Category_name Year
gen r_Dollars=(Dollars/CPIAUCSL)
gen growth=(Dollars-l.Dollars)/l.Dollars
gen r_growth=(r_Dollars-l.r_Dollars)/l.r_Dollars
tssmooth ma ma_growth = growth, window(2 1 2)
tssmooth ma ma_r_growth =r_growth, window(2 1 2)

list Year Category_name Dollars l.Dollars growth if Category_name =="Sales Taxes"
sum growth r_growth ma_growth ma_r_growth if Category_name=="Sales Taxes"

graph drop _all

twoway (scatter growth Year if Category_name=="Sales Taxes") (connected growth Year if Category_name=="Sales Taxes", name(Fig_1) lcolor(gray)), yline(.0325) ///
 legend(off)  title("Nominal") note("Average growth rate is 3.25%") ///
 ytitle("Growth rate")  ylabel(-.05 0 0.0325 .05 .10 .15, labsize(1.5))


twoway (scatter r_growth Year if Category_name=="Sales Taxes") (connected r_growth Year if Category_name=="Sales Taxes", name(Fig_2) lcolor(gray)), yline(.007) ///
 legend(off)  title("Real") note("Average real growth rate is 0.7%") ///
 ytitle("Real Growth rate")  ylabel(-.05 0 0.007 .05 .10, labsize(1.5))

twoway (scatter ma_growth Year if Category_name=="Sales Taxes") (connected ma_growth Year if Category_name=="Sales Taxes", name(Fig_3) lcolor(gray)), yline(.0337) ///
 legend(off)  title("Nominal Moving Average") note("Moving Average growth rate is 3.37%") ///
 ytitle("Moving Average Growth rate")  ylabel(-.05 0 0.0337 .05 .10 .15, labsize(1.5))

twoway (scatter ma_r_growth Year if Category_name=="Sales Taxes") (connected ma_r_growth Year if Category_name=="Sales Taxes", name(Fig_4) lcolor(gray)), yline(.008) ///
 legend(off)  title("Real Moving Average") note("Moving Average real growth rate is 0.8%") ///
 ytitle("Moving Average Real Growth rate")  ylabel(-.05 0 0.008 .05 .10, labsize(1.5))
 
 graph combine Fig_1 Fig_2 Fig_3 Fig_4, note("Source: Fiscal Futures All Funds Data. Moving averages are calculated with two leads (future years) and two lags (past years)." "Missing lags (pre 1998) and leads (post 2025) are ignored. Real values correct for inflation using the US consumer price index.") title("Various Measures of Illinois Sales Tax Growth Rate")
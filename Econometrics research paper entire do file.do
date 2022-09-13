rename var1 C02percapitamt
rename var2 C02kt
rename var3 Population
rename var4 gdp_m
rename var5 gdppercapita
rename C02percapitamt C02pcmt
rename gdppercapita gdppc
gen pop =  Population/1000
gen pop =  Population?1000
gen pop =  Population/1000
gen pop =  Population*0.001
drop pop'
drop pop
reg
reg C02kt gdp_m
clear
xtset country year
encode country, gen(country1)
xtset country1 year
reg
reg co2emissionskilotonnes gdppercapita
detail
sum, detail
clear
rename var1 country
rename var2 year
rename var3 C02mtpc
rename var4 C02kt
rename var5 population
rename var6 GDP
rename GDP GDPm
rename var7 gdppc
encode country, gen(country1)
xtset country1 year
clear
encode country, gen(country1)
xtset country1 year
xtset country1  t_year
gen gdp2 =  gdppercapita* gdppercapita
gen l_gdp2 = (l.gdp2/gdp2)
reg  ln_co2capita  ln_gdpcapita
xtreg  ln_co2capita, b  ln_gdpcapita
drop gdp2
drop  l_gdp2
gen l_gdp = ln(l.gdppercapita/ gdppercapita)
drop l_gdp
gen l_gdp = ln( gdppercapita/l.gdppercapita)
gen l_gdp2 =  l_gdp* l_gdp
reg  ln_co2capita  ln_gdpcapita  l_gdp2
reg co2_capita ln_gdpcapita l_gdp2
xtline gdppercapita co2emissionskilotonnes
cancel
cancel
line united states
line country_id(205) co2_capita  gdppercapita
line 205  co2_capita gdppercapita
clear
clear
encode country, gen(country1)
xtset country1  t_year
xtset country1  year
xtset country year
xtset country1  t_year
xtset country1  year
drop in 52/54
drop in 103/105
xtset country1  year
xtline gdppercapita co2emissionskilotonnes
cd "/opt/X11"
cd "/opt/X11"
twoway scatter ( c02emissionsmtpercapita gdpmillions)
encode c02emissionsmtpercapita, gen(c02mtpc)
twoway scatter ( c02mtpc  gdpmillions)
xtline gdppercapita co2emissionskilotonnes
gen l_gdp = ln( gdppercapita/l.gdppercapita)
gen l_gdp = ln(l.gdppercapita/ gdppercapita)
gen l_gdp2 =  l_gdp* l_gdp
gen l_c02pc = ln(c02emissionsmtpercapita/l.c02emissionsmtpercapita)
gen l_c02pc = ln( c02emissionsmtpercapita/l.c02emissionsmtpercapita)
gen l_c02pc = ln( c02emissionsmtpercapita/l.c02emissionsmtpercapita)
clear
use "data file uploaded to this repoository"
reg  ln_co2capita ln_gdpcapita, r
reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2 , r
dis (r2_a)
dis e(r2_a)
reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2 i.country_id , r
*** country fixed effects 
above
time fixed now
reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2 i.t_year , r
**** country and time fixed 
reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2 i.country_id i.t_year , r
xtreg ln_co2capita ln_gdpcapita ln_gdpcapita_2, fe
estimates store fixed
xtreg ln_co2capita ln_gdpcapita ln_gdpcapita_2, re
estimates store random
hausman fixed random
eststo
findit eststo
qui reg  ln_co2capita  ln_gdpcapita
eststo
qui reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2
eststo
estab
esttab
twoway scatter ( ln_co2capita ln_gdpcapita ln_gdpcapita_2) 
twoway scatter (  co2_capita  gdppercapita
twoway scatter (  co2_capita  gdppercapita)
twoway scatter ( co2_capita gdppercapita) (qfitci  co2_capita gdppercapita)
twoway scatter ( co2_capita gdppercapita) (qifitci  co2_capita gdppercapita)
twoway scatter ( co2_capita gdppercapita) (qlineci  co2_capita gdppercapita)
twoway scatter ( co2_capita gdppercapita) (qfit  co2_capita gdppercapita)
twoway scatter ( co2_capita gdppercapita) (qfit co2_capita gdppercapita) 
 
_est_fixed
twoway (scatter co2_capita gdppercapita) (lfit co2_capita gdppercapita)
twoway (scatter co2_capita gdppercapita) (qfit co2_capita gdppercapita)
twoway scatter ( co2_capita gdppercapita) (qfitci  co2_capita gdppercapita)
twoway scatter ( co2_capita gdppercapita) (qfitci  co2_capita gdppercapita)
twoway scatter ( co2_capita gdppercapita) (qfitci co2_capita gdppercapita)
twoway (scatter co2_capita gdppercapita) (qfit co2_capita gdppercapita)
twoway (scatter co2emissionskilotonnes gdppercapita) (qfit co2emissionskilotonnes gdppercapita)
twoway (scatter co2_capita gdp_dummy) (qfit co2_capita gdp_dummy)
twoway (scatter co2_capita gdppercapita if gdp_dummy) (qfit co2_capita gdppercapita if gdp_dummy)
twoway (scatter co2_capita gdppercapita if gdp_dummy=0) (qfit co2_capita gdppercapita if gdp_dummy=0)
twoway (scatter co2_capita gdppercapita if gdp_dummy<1) (qfit co2_capita gdppercapita if gdp_dummy<1)
drop country_id if  gdpmillions=0
drop country_id if  gdpmillions<1
save "/Users/JGoldhill/Documents/Hani & JGold Carbon_GDP Data Analysis.dta"
twoway (scatter co2_capita gdppercapita) (lfit co2_capita gdppercapita)
twoway (scatter co2_capita gdppercapita) (lfit co2_capita gdppercapita)
drop in 2/54
drop in 1
drop in 109/162
drop in 109/162
drop in 163/216
drop in 217/270
drop in 217/270
drop in 325/378
drop in 325/378
if gdp<1 drop
if  gdpmillions<1 drop
if  gdppercapita <1 drop
drop if  gdppercapita<1
drop in 1336/1373
reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2
twoway (scatter co2_capita gdppercapita) (lfit co2_capita gdppercapita)
twoway (scatter co2_capita gdppercapita) (qlfit co2_capita gdppercapita)
twoway (scatter co2_capita gdppercapita) (qilfit co2_capita gdppercapita)
twoway (scatter co2_capita gdppercapita) (qilfit co2_capita gdppercapita)
twoway (scatter co2_capita gdppercapita) (qfit co2_capita gdppercapita)
twoway (scatter co2_capita gdppercapita if gdp_dummy<1) (qfit co2_capita gdppercapita if gdp_dummy<1)
twoway (scatter co2_capita gdppercapita if gdp_dummy>1) (qfit co2_capita gdppercapita if gdp_dummy>1)
twoway (scatter co2_capita gdppercapita if gdp_dummy>0) (qfit co2_capita gdppercapita if gdp_dummy>0)
gen ln_gdpcapita_3 =  ln_gdpcapita_2* ln_gdpcapita
reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2 ln_gdpcapita_3, r
gen gdpc2 =  gdppercapita* gdppercapita
gen gdpc3 = gdpc2* gdppercapita
reg  co2_capita gdpc2 gdpc3, r
reg  co2_capita  gdppercapita  gdpc2 gdpc3, r
xtfischer
findit xtfischer
findit xtfisher
mutlipurt
xtfisher
xtfisher  ln_co2capita ln_gdpcapita
xtfisher  ln_co2capita 
xtfisher  ln_gdpcapita_2
xtfisher  ln_gdpcapita
xtfisher   co2_capita
xtfisher  country_id
xtfisher  gdppercapita
save "data file"
twoway (scatter  ln_co2capita  gdppercapita)
twoway (scatter  ln_co2capita  ln_gdpcapita)
reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2 ln_gdpcapita_3 i.country_id i.t_year , r
reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2 i.country_id i.t_year , r
reg  co2_capita  gdppercapita gdpc2 gdpc3, r
twoway scatter ( co2_capita gdppercapita) (qifitci  co2_capita gdppercapita)
twoway (scatter co2_capita gdppercapita if gdp_dummy>1) (qfit co2_capita gdppercapita if gdp_dummy>1)
twoway (scatter co2_capita gdppercapita if gdp_dummy>0) (qfit co2_capita gdppercapita if gdp_dummy>0)
twoway (scatter co2_capita gdppercapita if gdp_dummy>0) (qfit co2_capita gdppercapita if gdp_dummy>0)
twoway (scatter co2_capita gdppercapita if gdp_dummy>1) (qfit co2_capita gdppercapita if gdp_dummy>1)
twoway (scatter co2_capita gdppercapita if gdp_dummy>0) (qfit co2_capita gdppercapita if gdp_dummy>0)
twoway (scatter co2_capita gdppercapita if gdp_dummy<1) (qfit co2_capita gdppercapita if gdp_dummy<1)
twoway (scatter co2_capita gdppercapita if gdp_dummy>1) (qfit co2_capita gdppercapita if gdp_dummy>1)
twoway (scatter co2_capita gdppercapita if gdp_dummy<1) (qfit co2_capita gdppercapita if gdp_dummy<1)
twoway (scatter ln_co2capita ln_gdpcapita if gdp_dummy<1) (qfit ln_co2capita ln_gdpcapita if gdp_dummy<1)
twoway (scatter ln_co2capita ln_gdpcapita if gdp_dummy<1) (qfit ln_co2capita ln_gdpcapita if gdp_dummy<1)
twoway (scatter co2_capita gdppercapita if gdp_dummy>0) (qfit co2_capita gdppercapita if gdp_dummy>0)
clear
use "data file uploaded to this repoository""
drop ln_co2capita ln_gdpcapita
sum
xtset country_id t_year, yearly
xtsum 
set more off
gen ln_gdpcapita = ln( gdppercapita)
gen ln_co2capita = ln(  co2_capita)
gen ln_co2capita_2 = ln_gdpcapita*ln_gdpcapita 
drop ln_co2capita_2
gen ln_ ln_gdpcapita_2 =  ln_gdpcapita* ln_gdpcapita
gen ln_ ln_gdpcapita_2 =  ln_gdpcapita*ln_gdpcapita
gen ln_gdpcapita_2 =  ln_gdpcapita*ln_gdpcapita
reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2
reg  ln_co2capita ln_gdpcapita
use "data file uploaded to this repoository"
twoway (scatter ln_co2capita ln_gdpcapita if gdp_dummy<1) (qfit ln_co2capita ln_gdpcapita if gdp_dummy<1)
twoway (scatter co2_capita gdppercapita if gdp_dummy<1) (qfit co2_capita gdppercapita if gdp_dummy<1)
twoway (scatter co2_capita gdppercapita if gdp_dummy<1 and if gdppercapita>2) (qfit co2_capita gdppercapita if gdp_dummy<1 and if gdppercapita>2)
twoway (scatter co2_capita gdppercapita if gdp_dummy<1 & if gdppercapita>2) (qfit co2_capita gdppercapita if gdp_dummy<1 & if gdppercapita>2)
twoway (scatter co2_capita gdppercapita if gdp_dummy<1 & if gdppercapita>2) (qfit co2_capita gdppercapita if gdp_dummy<1 & if gdppercapita >2)
twoway (scatter co2_capita gdppercapita if gdp_dummy<1 & if gdppercapita>1) (qfit co2_capita gdppercapita if gdp_dummy<1 & if gdppercapita>1)
twoway (scatter co2_capita gdppercapita if gdp_dummy<1 & gdppercapita>1) (qfit co2_capita gdppercapita if gdp_dummy<1 if gdppercapita>1)
twoway (scatter co2_capita gdppercapita if gdp_dummy<1 & gdppercapita>1) (qfit co2_capita gdppercapita if gdp_dummy<1 & if gdppercapita>1)
twoway (scatter co2_capita gdppercapita if gdp_dummy<1 & gdppercapita>1) (qfit co2_capita gdppercapita if gdp_dummy<1 & gdppercapita>1)
twoway (scatter co2_capita gdppercapita if gdp_dummy>0 & gdppercapita>1) (qfit co2_capita gdppercapita if gdp_dummy>0 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if gdp_dummy>0 & gdppercapita>1) (qfit ln_co2capita gdppercapita if gdp_dummy>0 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if gdp_dummy>0 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if gdp_dummy>0 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if gdp_dummy<1 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if gdp_dummy<1 & gdppercapita>1)
)  nodraw
twoway (scatter ln_co2capita gdppercapita if gdp_dummy<1 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if gdp_dummy<1 & gdppercapita>1)
twoway (scatter co2_capita gdppercapita if gdp_dummy<1 & gdppercapita>1) (qfitci co2_capita gdppercapita if gdp_dummy<1 & gdppercapita>1)
twoway (scatter co2_capita gdppercapita if gdp_dummy>0 & gdppercapita>1) (qfitci co2_capita gdppercapita if gdp_dummy>0 & gdppercapita>1)
twoway (scatter ln_co2capita ln_gdpcapita if gdp_dummy>0 & gdppercapita>1) (qfitci ln_co2capita ln_gdpcapita if gdp_dummy>0 & gdppercapita>1)
twoway (scatter ln_co2capita ln_gdpcapita if gdp_dummy<1 & gdppercapita>1) (qfitci ln_co2capita ln_gdpcapita if gdp_dummy<1 & gdppercapita>1)
graph use "/Users/JGoldhill/Documents/Growth in C02:Capita for >6000.gph"
graph use "/Users/JGoldhill/Documents/Growth in C02:Capita for >6000.gph"
graph use "/Users/JGoldhill/Documents/Growth in C02:Capita for >6000.gph"
graph use "/Users/JGoldhill/Documents/Growth in C02:Capita for >6000.gph"
twoway (scatter ln_co2capita gdppercapita if gdp_dummy>0 & gdppercapita>1) (qfitci
>  ln_co2capita gdppercapita if gdp_dummy>0 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if gdp_dummy<1 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if gdp_dummy<1 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if gdp_dummy<1 & gdppercapita>1) (qfitciln_co2capita gdppercapita if gdp_dummy<1 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if gdp_dummy<1 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if gdp_dummy<1 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if gdppercapita>1) (qfit ln_co2capita gdppercapita if gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if gdp_dummy<1 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if gdp_dummy<1 & gdppercapita>1)
twoway (scatter co2_capita gdppercapita if gdp_dummy<1) (qfit co2_capita gdppercapita if gdp_dummy<1)
twoway (scatter co2_capita gdppercapita if gdp_dummy<1 & gdppercapita>1) (qfit co2_capita gdppercapita if gdp_dummy<1 & gdppercapita>1)
twoway (scatter co2_capita gdppercapita if gdp_dummy>0 & gdppercapita>1) (qfit co2_capita gdppercapita if gdp_dummy>0 & gdppercapita>1)
save "/Users/JGoldhill/Downloads/Hani & JGold Carbon_GDP Data Analysis.dta", replace
twoway (scatter ln_co2capita gdppercapita if gdp_dummy<1 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if gdp_dummy<1 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if gdp_dummy>0 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if gdp_dummy>0 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if gdppercapita>1) (qfitci ln_co2capita gdppercapita if gdppercapita>1)
twoway (scatter co2_capita gdppercapita if gdppercapita>1) (qfitci co2_capita gdppercapita if gdppercapita>1)
twoway (scatter co2_capita gdppercapita if gdppercapita>1) (qfitci co2_capita gdppercapita if gdppercapita>1)
twoway (scatter ln_co2capita ln_gdpcapita if gdp_dummy<1 & gdppercapita>1) (qfitci ln_co2capita ln_gdpcapita if gdp_dummy<1 & gdppercapita>1)
twoway (scatter ln_co2capita ln_gdpcapita if gdp_dummy>0 & gdppercapita>1) (qfitci ln_co2capita ln_gdpcapita if gdp_dummy>0 & gdppercapita>1)
graph save Graph "/Users/JGoldhill/Documents/Growth in C02:Capita over lnGDPCap developed.gph"
graph save Graph "/Users/JGoldhill/Documents/Growth in C02:Capita over lnGDPCap developed.gph", replace
graph save Graph "/Users/JGoldhill/Documents/Growth in C02:Capita over lnGDPCap developed.gph", replace
graph save Graph "/Users/JGoldhill/Documents/Growth in C02:Capita over lnGDPCap developed.gph", replace
gen GDPDummy = 1 if  gdppercapita > 12,000
gen GDPDummy = 1 if  gdppercapita>12,000
gen GDPDummy = 1 if  gdppercapita>12000
drop  GDPDummy
gen GDPdummy = 1 or 0 if  gdppercapita>10000 or <10000
gen GDPdummy = 1, 0 if  gdppercapita>10000, <10000
gen GDPdummy = 1, 0 if  gdppercapita>10000  <10000
gen GDPdummy = 1/0 if  gdppercapita>/<10000
gen GDPdummy = 1/0 if  gdppercapita><10000
gen GDPdummy = 1/0 if  gdppercapita>10000
drop  GDPdummy
gen GDPdummy = 0
replace  GDPdummy = 1 if  gdppercapita>10000
twoway (scatter ln_co2capita ln_gdpcapita if GDPdummy>0 0 & gdppercapita>1) (qfitci ln_co2capita ln_gdpcapita if GDPdummy >0 & gdppercapita>1)
twoway (scatter ln_co2capita ln_gdpcapita if GDPdummy>0 & gdppercapita>1) (qfitci ln_co2capita ln_gdpcapita if GDPdummy >0 & gdppercapita>1)
twoway (scatter co2_capita gdppercapita if GDPdummy<1 1 & gdppercapita>1) (qfit co2_capita gdppercapita if GDPdummy <1 & gdppercapita>1)
twoway (scatter co2_capita gdppercapita if GDPdummy<1  & gdppercapita>1) (qfit co2_capita gdppercapita if GDPdummy <1 & gdppercapita>1)
twoway (scatter co2_capita gdppercapita if GDPdummy<1  & gdppercapita>1) (qifitci co2_capita gdppercapita if GDPdummy <1 & gdppercapita>1)
twoway (scatter co2_capita gdppercapita if GDPdummy<1  & gdppercapita>1) (qfitci co2_capita gdppercapita if GDPdummy <1 & gdppercapita>1)
twoway (scatter co2_capita gdppercapita if GDPdummy>0  & gdppercapita>1) (qfitci co2_capita gdppercapita if GDPdummy>0 & gdppercapita>1)
sum
sum  t_year gdppercapita co2_capita country_id GDPdummy
sum  t_year gdppercapita co2_capita country_id GDPdummy, detail
sum  t_year gdppercapita co2_capita country_id GDPdummy
sum  t_year country_id gdppercapita ln_gdpcapita ln_gdpcapita_2 co2_capita ln_co2capita GDPdummy
if 
if gdppercapita = 0
if gdppercapita = 0 .
if gdppercapita = 0.
if gdppercapita == 0.
ignore if 
make 
pwcorr  ln_co2capita ln_gdpcapita ln_gdpcapita_2
save "/Users/JGoldhill/Downloads/Hani & JGold Carbon_GDP Data Analysis.dta", replace
hist  co2_capita
hist  co2_capita if  co2_capita=/0
hist  co2_capita if  co2_capita=\0
hist  co2_capita if  co2_capita !0
hist  co2_capita if  co2_capita!0
hist  co2_capita if  co2_capita ! 0
hist  co2_capita if  co2_capita ~ 0
hist  co2_capita if  co2_capita~0
hist  co2_capita if  co2_capita~=0
hist  co2_capita
hist  co2_capita if  co2_capita~=0
hist  gdppercapita if  gdppercapita ~=0
hist gdppercapita
hist  gdppercapita if  gdppercapita ~=0
hist  co2_capita if  co2_capita~=0
hist ln_gdpcapita if  ln_gdpcapita ~=0
hist co2_capita if co2_capita ~=0
hist ln_co2capita if ln_co2capita ~=0
hist ln_gdpcapita
hist co2_capita if co2_capita ~=0
hist  gdppercapita if  gdppercapita ~=0
hist  gdppercapita
hist  gdppercapita if  gdppercapita ~=0
hist co2_capita if co2_capita ~=0
gen ln-co2pc = ( co2_capita/l.co2_capita)
gen lnco2pc = ( co2_capita/l.co2_capita)
gen lnco2p = (l.co2_capita/co2_capita)
gen i= ( gdppercapita/l.gdppercapita)
drop i
gen i= ln( gdppercapita/l.gdppercapita)
gen lnco2pc = ln( co2_capita/l.co2_capita)
gen lncoc = ln( co2_capita/l.co2_capita)
drop  lncoc i lnco2p lnco2pc
gen y=ln co2_capita
gen y= lnco2_capita
gen y= ln(co2_capita)
gen x= ln(co2_capita/l.co2_capita)
gen i= ln( gdppercapita/l.gdppercapita)
reg x i
drop x i
drop y
reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2 i.country_id i.t_year, r
qui reg  ln_co2capita  ln_gdpcapita
eststo
qui reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2
eststo
esttab
clear eststo
drop _est_est3 _est_est4
qui reg  ln_co2capita  ln_gdpcapita, r
eststo
qui reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2, r
eststo
esttab
estout
eststo clear
qui reg  ln_co2capita  ln_gdpcapita, r
eststo
qui reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2, r
eststo
esttab
predict yhat
twoway (scatter  yhat  co2_capita)
twoway (scatter  yhat  gdppercapita)
twoway (scatter  yhat  ln_gdpcapita)
graph yhat
graph yhat  gdpmillions
twoway (scatter ln_co2capita ln_gdpcapita if GDPdummy>0 & gdppercapita>1) (qfitci ln_co2capita ln_gdpcapita if GDPdummy >0 & gdppercapita>1)
twoway (scatter ln_co2capita ln_gdpcapita if gdppercapita>1) (qfitci ln_co2capita ln_gdpcapita if gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if GDPdummy>0 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if GDPdummy >0 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if GDPdummy<1 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if GDPdummy <1 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if GDPdummy>0 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if GDPdummy >0 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if GDPdummy>0 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if GDPdummy >0 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if GDPdummy<1 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if GDPdummy <1 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if gdppercapita>1) (qfitci ln_co2capita gdppercapita if gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if GDPdummy<1 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if GDPdummy <1 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if GDPdummy>0 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if GDPdummy >0 & gdppercapita>1)
reg  co2_capita  gdppercapita  (gdppercapita*gdppercapita)  (gdppercapita*gdppercapita*gdppercapita)
gen gdpc2 =  gdppercapita* gdppercapita
gen gdpc3=  gdpc2* gdppercapita
reg  co2_capita  gdppercapita gdpc2 gdpc3
twoway (scatter  co2_capita gdppercapita gdpc2 gdpc3)
reg  co2_capita  gdppercapita gdpc2 gdpc3, r
reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2, r
reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2 i.t_year, r
areg  ln_co2capita ln_gdpcapita ln_gdpcapita_2, absorb( country)
areg  ln_co2capita ln_gdpcapita ln_gdpcapita_2, absorb(t_year)
areg  ln_co2capita ln_gdpcapita ln_gdpcapita_2, absorb(t_year), r
areg  ln_co2capita ln_gdpcapita ln_gdpcapita_2, absorb(t_year) r
areg  ln_co2capita ln_gdpcapita ln_gdpcapita_2, absorb(country) r
areg  ln_co2capita ln_gdpcapita ln_gdpcapita_2, absorb(country) absorb(t_year )r
areg  ln_co2capita ln_gdpcapita ln_gdpcapita_2, absorb(country t_year r)
areg  ln_co2capita ln_gdpcapita ln_gdpcapita_2, absorb(country, t_year r)
areg  ln_co2capita ln_gdpcapita ln_gdpcapita_2, absorb(country & t_year r)
areg  ln_co2capita ln_gdpcapita ln_gdpcapita_2, absorb(country) (t_year) r
areg  ln_co2capita ln_gdpcapita ln_gdpcapita_2, absorb (country) (t_year) r
areg  ln_co2capita ln_gdpcapita ln_gdpcapita_2, absorb (country/t_year) r
areg  ln_co2capita ln_gdpcapita ln_gdpcapita_2, absorb (country t_year) r
areg  ln_co2capita ln_gdpcapita ln_gdpcapita_2, absorb (country & t_year) r
reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2 i.country i.t_year, r
reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2 i.country_id i.t_year , r
ac  ln_co2capita
xtunitroot ht  ln_co2capita
xtunitroot ht  ln_gdpcapita
xtunitroot hadri  ln_co2capita
xtset country_id t_year
xtunitroot country_id t_year
xtunitroot t_year
xtreg ln_co2capita ln_gdpcapita ln_gdpcapita_2, fe
estimates store fixed
xtreg ln_co2capita ln_gdpcapita ln_gdpcapita_2, re
estimates store random
hausman fixed random
xtfisher  ln_co2capita 
xtfisher co2_capita
xtfisher  gdppercapita
xtreg ln_co2capita ln_gdpcapita ln_gdpcapita_2, r fe
estimates store fixed
xtreg ln_co2capita ln_gdpcapita ln_gdpcapita_2, r re
estimates store random
hausman fixed random
clear eststo
clear estout
estout clear
eststo clear
qui reg  ln_co2capita  ln_gdpcapita i.country_id, r
eststo
qui reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2 i.country_id, r
eststo
esttab
esttab, absorb (country)
esttab absorb (country)
eststo clear
qui reg  ln_co2capita  ln_gdpcapita i.country_id, absorb ( country_id) r
qui reg  ln_co2capita  ln_gdpcapita i.country_id,  r
eststo
qui reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2 i.country_id, r
eststo
esttab, drop ( country_id)
esttab, drop ( country)
esttab, drop (1-215)
esttab, drop (1.country_id/215.country_id)
esttab, drop (1.country_id-215.country_id)
esttab, drop (1.country_id)
esttab, drop (1.country~d)
esttab, drop (1.countr~d)
esttab, ar2
gen Ggdpcap = d.ln_gdpcapita
rename Ggdpcap GrGDPcap
gen GrGDPcap2=  GrGDPcap^2
gen GrCO2cap= d.ln_co2capita
reg  GrCO2cap  GrGDPcap GrGDPcap2, r
sum  GrCO2cap GrGDPcap GrGDPcap2
sum  ln_gdpcapita_2
reg  GrCO2cap  GrGDPcap
twoway (scatter  GrCO2cap GrGDPcap) (qifitci  GrCO2cap GrGDPcap)
twoway (scatter  GrCO2cap GrGDPcap) (qfitci  GrCO2cap GrGDPcap)
twoway (scatter   GrCO2cap  gdppercapita)
twoway (scatter   GrCO2cap  gdppercapita if gdppercapita.1)
twoway (scatter   GrCO2cap  gdppercapita if gdppercapita>1)
twoway (scatter  GrCO2cap GrGDPcap) (qfitci  GrCO2cap GrGDPcap)
twoway (scatter  GrCO2cap gdppercapita) (qfitci  GrCO2cap gdppercapita)
twoway (scatter  GrCO2cap GrGDPcap) (qfitci  GrCO2cap GrGDPcap)
twoway (scatter  GrCO2cap GrGDPcap if gdppercapita>1) (qfitci  GrCO2cap GrGDPcap if gdppercapita>1)
twoway (scatter  GrCO2cap GrGDPcap if gdppercapita>1) (qfitci  GrCO2cap GrGDPcap if gdppercapita>1)
twoway (scatter  GrCO2cap GrGDPcap if GDPdummy<1 & gdppercapita>1) (qfitci  GrCO2cap GrGDPcap if GDPdummy<1 & gdppercapita>1)
twoway (scatter  GrCO2cap GrGDPcap if GDPdummy>0 & gdppercapita>1) (qfitci  GrCO2cap GrGDPcap if GDPdummy>0 & gdppercapita>1)
twoway (scatter  GrCO2cap GrGDPcap if gdppercapita>1) (qfitci  GrCO2cap GrGDPcap gdppercapita>1)
twoway (scatter  GrCO2cap GrGDPcap if gdppercapita>1) (qfitci  GrCO2cap GrGDPcap if gdppercapita>1)
eststo clear
qui reg  ln_co2capita  ln_gdpcapita i.t_year,  r
eststo
qui reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2 i.t_year, r
eststo
esttab
esttab, ar2
reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2 i.t_year, r
eststo clear
qui reg  ln_co2capita  ln_gdpcapita i.country_id i.t_year,  r
eststo
qui reg  ln_co2capita ln_gdpcapita ln_gdpcapita_2 i.country_id i.t_year, r
eststo
esttab, ar2
twoway (scatter  ln_co2capita  gdppercapita if  gdppercapita>1) (qfitci  ln_co2capita gdppercapita if gdppercapita>1)
twoway (scatter  ln_co2capita  gdppercapita if GDPdummy>0 & gdppercapita>1) (qfitci  ln_co2capita gdppercapita if GDPdummy>0 & gdppercapita>1)
twoway (scatter  ln_co2capita  gdppercapita if gdp_dummy>0 & gdppercapita>1) (qfitci  ln_co2capita gdppercapita if gdp_dummy>0 & gdppercapita>1)
twoway (scatter  ln_co2capita  gdppercapita if gdp_dummy>0 & gdppercapita>1) (qfitci  ln_co2capita gdppercapita if gdp_dummy>0 & gdppercapita>1)
twoway (scatter  ln_co2capita  gdppercapita if  gdppercapita>1) (qfitci  ln_co2capita gdppercapita if gdppercapita>1)
twoway (scatter  ln_co2capita  gdppercapita if  gdppercapita>1) (fitci  ln_co2capita gdppercapita if gdppercapita>1)
twoway (scatter  ln_co2capita  gdppercapita if  gdppercapita>1) (lfitci  ln_co2capita gdppercapita if gdppercapita>1)
twoway (scatter co2_capita gdp_dummy) (qfit co2_capita gdp_dummy)
twoway (scatter co2_capita gdppercapita if gdp_dummy<1) (qfit co2_capita gdppercapita if gdp_dummy<1)
twoway (scatter co2_capita gdppercapita if gdppercapita>1) (qfitci co2_capita gdppercapita if gdppercapita>1)
twoway (scatter co2_capita gdppercapita if GDPdummy<1 & gdppercapita>1) (qfitci co2_capita gdppercapita if GDPdummy<1 & gdppercapita>1)
twoway (scatter  ln_co2capita  gdppercapita if  gdppercapita>1) (fitci  ln_co2capita gdppercapita if gdppercapita>1)
twoway (scatter  ln_co2capita  gdppercapita if  gdppercapita>1) (lfitci  ln_co2capita gdppercapita if gdppercapita>1)
twoway (scatter ln_co2capita ln_gdpcapita if gdppercapita>1) (qfitci ln_co2capita ln_gdpcapita if gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if gdppercapita>1) (qfitci ln_co2capita gdppercapita if gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if GDPdummy<1 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if GDPdummy <1 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if GDPdummy>0 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if GDPdummy >0 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if gdp_dummy >0 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if gdp_dummy >0 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if gdppercapita>5000) (qfitci ln_co2capita gdppercapita if gdppercapita>5000)
sum  GrCO2cap GrGDPcap GrGDPcap2
twoway (scatter ln_co2capita gdppercapita if gdp_dummy >0 & gdppercapita>1) (qfitci ln_co2capita gdppercapita if gdp_dummy >0 & gdppercapita>1)
twoway (scatter ln_co2capita gdppercapita if gdppercapita>7000) (qfitci ln_co2capita gdppercapita if gdppercapita>7000)
twoway (scatter ln_co2capita gdppercapita if gdppercapita>6500) (qfitci ln_co2capita gdppercapita if gdppercapita>6500)
twoway (scatter co2_capita gdppercapita if gdppercapita>1) (qfitci co2_capita gdppercapita if gdppercapita>1)
eststo clear
qui reg  ln_co2capita  ln_gdpcapita i.country_id,  r
eststo
eststo clear
qui reg  GrCO2cap GrGDPcap i.country_id i.t_year,  r
eststo
qui reg  GrCO2cap GrGDPcap GrGDPcap2 i.country_id i.t_year, r
eststo
esttab, ar2
eststo clear
qui reg  GrCO2cap GrGDPcap i.t_year,  r
eststo
qui reg  GrCO2cap GrGDPcap GrGDPcap2 i.t_year, r
eststo
esttab, ar2
drop  _est_fixed
drop  _est_random
xtreg GrCO2cap GrGDPcap GrGDPcap2, fe
estimates store fixed
xtreg GrCO2cap GrGDPcap GrGDPcap2, re
estimates store random
hausman fixed random
reg GrCO2cap GrGDPcap GrGDPcap2, r
xtreg  GrCO2cap GrGDPcap GrGDPcap2, r
testparm i.t_year
drop _est_fixed _est_random
xtreg GrCO2cap country_id t_year, fe
estimates store fixed
xtreg GrCO2cap t_year country_id t_year, re
estimates store random
hausman fixed random
drop _est_est1 _est_est2 _est_fixed _est_random
qui reg  GrCO2cap GrGDPcap, re r
qui xtreg GrCO2cap GrGDPcap, re r
eststo
qui xtreg GrCO2cap GrGDPcap GrGDPcap2, re r
eststo
esttab
eststo clear
qui xtreg GrCO2cap GrGDPcap, re r
eststo
qui xtreg GrCO2cap GrGDPcap GrGDPcap2, re r
eststo
esttab ar2
esttab, ar2
qui xtreg GrCO2cap GrGDPcap GrGDPcap2, re r
xttest0
reg  GrCO2cap GrGDPcap GrGDPcap2, r
drop _est_est1 _est_est2
eststo
eststo clear
qui reg  GrCO2cap GrGDPcap,  r
eststo
qui reg  GrCO2cap GrGDPcap GrGDPcap2, r
eststo
esttab, ar2
twoway (scatter  GrCO2cap gdppercapita) (qfitci  GrCO2cap gdppercapita)
twoway (scatter  GrCO2cap gdppercapita if gdppercapita>1) (qfitci  GrCO2cap gdppercapita if gdppercapita>1)
twoway (scatter co2_capita gdppercapita if gdppercapita>1) (qfitci co2_capita gdppercapita if gdppercapita>1)
twoway (scatter co2_capita GrGDPcap if gdppercapita>1) (qfitci co2_capita GrGDPcap if gdppercapita>1)
twoway (scatter co2_capita GrGDPcap if GDPdummy>0 & gdppercapita>1) (qfitci co2_capita GrGDPcap if GDPdummy>0 & gdppercapita>1)
twoway (scatter co2_capita GrGDPcap if GDPdummy<1 & gdppercapita>1) (qfitci co2_capita GrGDPcap if GDPdummy<1 & gdppercapita>1)
twoway (scatter  GrCO2cap GrGDPcap if gdppercapita>1) (qfitci  GrCO2cap GrGDPcap if gdppercapita>1)
twoway (scatter  GrCO2cap GrGDPcap if GDPdummy>0 & gdppercapita>1) (qfitci  GrCO2cap GrGDPcap if GDPdummy>0 & gdppercapita>1)
twoway (scatter  GrCO2cap GrGDPcap if gdppercapita>20000) (qfitci  GrCO2cap GrGDPcap if gdppercapita>20000)
twoway (scatter  GrCO2cap GrGDPcap if gdppercapita>25000) (qfit  GrCO2cap GrGDPcap if gdppercapita>25000)
twoway (scatter  GrCO2cap GrGDPcap if gdppercapita>20000) (qfit  GrCO2cap GrGDPcap if gdppercapita>20000)
twoway (scatter  GrCO2cap GrGDPcap if gdppercapita>15000) (qfit  GrCO2cap GrGDPcap if gdppercapita>15000)
twoway (scatter  GrCO2cap GrGDPcap if gdppercapita>20000) (qfit  GrCO2cap GrGDPcap if gdppercapita>20000)
twoway (scatter  GrCO2cap GrGDPcap if gdppercapita>15000) (qfit  GrCO2cap GrGDPcap if gdppercapita>15000)
twoway (scatter  GrCO2cap GrGDPcap if gdppercapita>15000 & GrCO2cap<2) (qfit  GrCO2cap GrGDPcap if gdppercapita>15000 & GrCO2cap<2)
twoway (scatter  GrCO2cap GrGDPcap if gdppercapita>30000 & GrCO2cap<2) (qfit  GrCO2cap GrGDPcap if gdppercapita>30000 & GrCO2cap<2)
twoway (scatter  GrCO2cap GrGDPcap if gdppercapita>35000 & GrCO2cap<2) (qfit  GrCO2cap GrGDPcap if gdppercapita>35000 & GrCO2cap<2)
twoway (scatter  GrCO2cap GrGDPcap if gdppercapita>30000 & GrCO2cap<2) (qfit  GrCO2cap GrGDPcap if gdppercapita>30000 & GrCO2cap<2)

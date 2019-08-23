# Making datras data a little more tidy


```r
# devtools::install_github("fishvice/tidyices")
library(tidyices)
library(tidyverse)

yrs <- 2017  # years
qs <- c(1)   # quarters

hh <-
  icesDatras::getDATRAS(record = "HH",
                        survey = "NS-IBTS",
                        years = yrs,
                        quarters = qs) %>%
  dtrs_tidy_hh()
glimpse(hh)
```

```
## Observations: 385
## Variables: 21
## $ survey         <chr> "NS-IBTS", "NS-IBTS", "NS-IBTS", "NS-IBTS", "NS-I…
## $ id             <chr> "2017_1_THA2_GOV_48", "2017_1_THA2_GOV_49", "2017…
## $ year           <int> 2017, 2017, 2017, 2017, 2017, 2017, 2017, 2017, 2…
## $ quarter        <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1…
## $ ship           <chr> "THA2", "THA2", "THA2", "THA2", "THA2", "THA2", "…
## $ gear           <chr> "GOV", "GOV", "GOV", "GOV", "GOV", "GOV", "GOV", …
## $ haulno         <int> 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 6…
## $ date           <dttm> 2017-02-05 07:32:00, 2017-02-05 10:48:00, 2017-0…
## $ country        <chr> "FRA", "FRA", "FRA", "FRA", "FRA", "FRA", "FRA", …
## $ depth          <int> 44, 32, 34, 22, 17, 23, 49, 41, 32, 31, 44, 26, 3…
## $ haulval        <chr> "V", "V", "V", "V", "V", "V", "V", "V", "V", "V",…
## $ hauldur        <int> 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 3…
## $ shootlat       <dbl> 52.7324, 53.2533, 53.2344, 52.5565, 52.1914, 51.8…
## $ shootlong      <dbl> 2.7522, 2.6926, 3.4292, 4.2328, 4.2622, 3.6396, 2…
## $ haullat        <dbl> 52.7705, 53.2236, 53.1984, 52.5520, 52.1625, 51.8…
## $ haullong       <dbl> 2.7474, 2.7161, 3.4291, 4.1789, 4.2414, 3.5879, 2…
## $ statrec        <chr> "34F2", "35F2", "35F3", "34F4", "33F4", "32F3", "…
## $ daynight       <chr> "D", "D", "D", "D", "D", "D", "D", "D", "D", "D",…
## $ datatype       <chr> "C", "C", "C", "C", "C", "C", "C", "C", "C", "C",…
## $ stdspecreccode <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1…
## $ bycspecreccode <int> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1…
```

```r
hl <-
  icesDatras::getDATRAS(record = "HL",
                        survey = "NS-IBTS",
                        years = yrs,
                        quarters = qs) %>%
  dtrs_tidy_hl(hh)
glimpse(hl)
```

```
## Observations: 54,719
## Variables: 6
## $ survey <chr> "NS-IBTS", "NS-IBTS", "NS-IBTS", "NS-IBTS", "NS-IBTS", "N…
## $ id     <chr> "2017_1_SCO3_GOV_14", "2017_1_SCO3_GOV_14", "2017_1_SCO3_…
## $ latin  <chr> "Microstomus kitt", "Microstomus kitt", "Microstomus kitt…
## $ sex    <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N…
## $ length <dbl> 23, 24, 25, 28, 21, 2, 3, 4, 5, 6, 7, 8, 28, 31, 2, 3, 4,…
## $ n      <dbl> 8, 6, 8, 2, 2, 12, 90, 224, 146, 66, 16, 2, 2, 2, 2, 8, 2…
```

```r
ca <-
  icesDatras::getDATRAS(record = "CA",
                        survey = "NS-IBTS",
                        years = yrs,
                        quarters = qs) %>%
  dtrs_tidy_ca()
glimpse(ca)
```

```
## Observations: 32,163
## Variables: 9
## $ survey   <chr> "NS-IBTS", "NS-IBTS", "NS-IBTS", "NS-IBTS", "NS-IBTS", …
## $ id       <chr> "2017_1_ENDW_GOV_28", "2017_1_ENDW_GOV_28", "2017_1_END…
## $ latin    <chr> "Loligo", "Loligo", "Pleuronectes platessa", "Hippoglos…
## $ length   <dbl> 19.5, 21.5, 35.0, 7.0, 8.0, 10.0, 11.0, 12.0, 13.0, 14.…
## $ sex      <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,…
## $ maturity <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,…
## $ age      <int> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,…
## $ wgt      <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,…
## $ n        <int> 1, 1, 1, 1, 1, 3, 8, 7, 9, 11, 14, 5, 8, 10, 7, 3, 1, 7…
```



R version 4.2.1 (2022-06-23 ucrt) -- "Funny-Looking Kid"
Copyright (C) 2022 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union

> data <- read.csv("https://raw.githubusercontent.com/guru99-edu/R-Programming/master/lahman-batting.csv")
> select(data, c(playerID, yearID, AB, teamID, lgID, G, R, HR, SH))  % > % 
+ arrange(playerID, teamID, yearID)
Error in select(data, c(playerID, yearID, AB, teamID, lgID, G, R, HR,  : 
  could not find function "% > %"
> select(data, c(playerID, yearID, AB, teamID, lgID, G, R, HR, SH))
     playerID yearID  AB teamID lgID  G  R HR SH
1   abercda01   1871   4    TRO <NA>  1  0  0 NA
2    addybo01   1871 118    RC1 <NA> 25 30  0 NA
3   allisar01   1871 137    CL1 <NA> 29 28  0 NA
4   allisdo01   1871 133    WS3 <NA> 27 28  2 NA
5   ansonca01   1871 120    RC1 <NA> 25 29  0 NA
6   armstbo01   1871  49    FW1 <NA> 12  9  0 NA
7   barkeal01   1871   4    RC1 <NA>  1  0  0 NA
8   barnero01   1871 157    BS1 <NA> 31 66  0 NA
9   barrebi01   1871   5    FW1 <NA>  1  1  0 NA
10  barrofr01   1871  86    BS1 <NA> 18 13  0 NA
11   bassjo01   1871  89    CL1 <NA> 22 18  3 NA
12  battijo01   1871   3    CL1 <NA>  1  0  0 NA
13  bealsto01   1871  36    WS3 <NA> 10  6  0 NA
14  beaveed01   1871  15    TRO <NA>  3  7  0 NA
15  bechtge01   1871  94    PH1 <NA> 20 24  1 NA
16  bellast01   1871 128    TRO <NA> 29 26  0 NA
17  berkena01   1871   4    PH1 <NA>  1  0  0 NA
18  berryto01   1871   4    PH1 <NA>  1  0  0 NA
19  berthha01   1871  73    WS3 <NA> 17 17  0 NA
20  biermch01   1871   2    FW1 <NA>  1  0  0 NA
21   birdge01   1871 106    RC1 <NA> 25 19  0 NA
22  birdsda01   1871 152    BS1 <NA> 29 51  0 NA
23  brainas01   1871 134    WS3 <NA> 30 24  0 NA
24  brannmi01   1871  14    CH1 <NA>  3  2  0 NA
25  burrohe01   1871  63    WS3 <NA> 12 11  1 NA
26  careyto01   1871  87    FW1 <NA> 19 16  0 NA
27  carleji01   1871 127    CL1 <NA> 29 31  0 NA
28   conefr01   1871  77    BS1 <NA> 19 17  0 NA
29  connone01   1871  33    TRO <NA>  7  6  0 NA
30  cravebi01   1871 118    TRO <NA> 27 26  0 NA
31  cuthbne01   1871 150    PH1 <NA> 28 47  3 NA
32  deaneha01   1871  22    FW1 <NA>  6  3  0 NA
33  donnepe01   1871  34    FW1 <NA>  9  7  0 NA
34  duffyed01   1871 121    CH1 <NA> 26 30  0 NA
35  eggleda01   1871 147    NY2 <NA> 33 37  0 NA
36  ewellge01   1871   3    CL1 <NA>  1  0  0 NA
37  fergubo01   1871 158    NY2 <NA> 33 30  0 NA
38  fishech01   1871 123    RC1 <NA> 25 24  1 NA
39  fislewe01   1871 147    PH1 <NA> 28 43  0 NA
40  fleetfr01   1871   6    NY2 <NA>  1  1  0 NA
41  flowedi01   1871 105    TRO <NA> 21 39  0 NA
42  flynncl01   1871 142    TRO <NA> 29 43  0 NA
43  foleyto01   1871  84    CH1 <NA> 18 18  0 NA
44  foranji01   1871  89    FW1 <NA> 19 21  1 NA
45  forceda01   1871 162    WS3 <NA> 32 45  0 NA
46  fulmech01   1871  63    RC1 <NA> 16 11  0 NA
47  glennjo01   1871 120    WS3 <NA> 26 25  0 NA
48  goldswa01   1871  88    FW1 <NA> 19  8  0 NA
49  gouldch01   1871 151    BS1 <NA> 31 38  2 NA
50   hallge01   1871 136    WS3 <NA> 32 31  2 NA
51  halliji01   1871  25    FW1 <NA>  5  7  0 NA
52    hamra01   1871 113    RC1 <NA> 25 25  0 NA
53  hastisc01   1871 118    RC1 <NA> 25 27  0 NA
54  hatfijo01   1871 168    NY2 <NA> 33 41  0 NA
55  heubege01   1871  75    PH1 <NA> 17 18  0 NA
56  highadi01   1871  94    NY2 <NA> 21 21  0 NA
57  hodesch01   1871 130    CH1 <NA> 28 32  2 NA
58  jackssa01   1871  76    BS1 <NA> 16 17  0 NA
59  johnsca01   1871  67    CL1 <NA> 16 10  0 NA
60  kellybi01   1871  67    FW1 <NA> 18 16  0 NA
61  kimbage01   1871 131    CL1 <NA> 29 18  0 NA
62   kingma01   1871 101    CH1 <NA> 20 23  2 NA
63   kingst01   1871 144    TRO <NA> 29 45  0 NA
64  kohlehe01   1871  12    FW1 <NA>  3  0  0 NA
65  lennobi01   1871  48    FW1 <NA> 12  5  0 NA
66  leonaan01   1871 148    WS3 <NA> 31 33  0 NA
67   mackde01   1871 122    RC1 <NA> 25 34  0 NA
68  malonfe01   1871 134    PH1 <NA> 27 33  1 NA
69  mathebo01   1871  89    FW1 <NA> 19 15  0 NA
70  mcatebu01   1871 135    CH1 <NA> 26 34  0 NA
71  mcbridi01   1871 132    PH1 <NA> 25 36  0 NA
72  mcderjo01   1871   8    FW1 <NA>  2  3  0 NA
73  mcgeami01   1871 148    TRO <NA> 29 42  0 NA
74  mcmuljo01   1871 136    TRO <NA> 29 38  0 NA
75  mcveyca01   1871 153    BS1 <NA> 29 43  0 NA
76  meyerle01   1871 130    PH1 <NA> 26 45  4 NA
77  millsch01   1871 146    NY2 <NA> 32 27  0 NA
78  millsev01   1871 157    WS3 <NA> 32 38  1 NA
79  minched01   1871  36    FW1 <NA>  9  4  0 NA
80  nortofr01   1871   1    WS3 <NA>  1  0  0 NA
81  paborch01   1871 142    CL1 <NA> 29 24  0 NA
82  patteda01   1871 151    NY2 <NA> 32 31  0 NA
83  pearcdi01   1871 163    NY2 <NA> 33 31  0 NA
84  phelpne01   1871   3    FW1 <NA>  1  0  0 NA
85   pikeli01   1871 130    TRO <NA> 28 43  4 NA
86  pinkhed01   1871  95    CH1 <NA> 24 27  1 NA
87  prattal01   1871 130    CL1 <NA> 29 31  0 NA
88  prattto01   1871   6    PH1 <NA>  1  2  0 NA
89  questjo01   1871  13    CL1 <NA>  3  1  0 NA
90  quinnpa02   1871  17    FW1 <NA>  5  8  0 NA
91  radcljo01   1871 145    PH1 <NA> 28 47  0 NA
92  reachal01   1871 133    PH1 <NA> 26 43  0 NA
93  sagerpo01   1871  39    RC1 <NA>  8  9  0 NA
94  schafha01   1871 149    BS1 <NA> 31 38  0 NA
95  selmafr01   1871  65    FW1 <NA> 14 14  1 NA
96  senseco01   1871 127    PH1 <NA> 25 38  0 NA
97  simmojo01   1871 129    CH1 <NA> 27 29  0 NA
98  smithch01   1871  72    NY2 <NA> 14 15  0 NA
99  spaldal01   1871 144    BS1 <NA> 31 43  1 NA
100 startjo01   1871 161    NY2 <NA> 33 35  1 NA
101 stearbi01   1871   9    WS3 <NA>  2  1  0 NA
102 stirega01   1871 110    RC1 <NA> 25 23  2 NA
103 suttoez01   1871 128    CL1 <NA> 29 35  3 NA
104 sweasch01   1871  19    WS3 <NA>  5  5  0 NA
105 treacfr01   1871 124    CH1 <NA> 25 39  4 NA
106 waterfr01   1871 158    WS3 <NA> 32 46  0 NA
107 whitede01   1871 146    CL1 <NA> 29 40  1 NA
108 whiteel01   1871  70    CL1 <NA> 15 13  0 NA
109 whitewa01   1871   4    WS3 <NA>  1  0  0 NA
110 woltery01   1871 138    NY2 <NA> 32 33  0 NA
111  woodji01   1871 135    CH1 <NA> 28 45  1 NA
 [ reached 'max' / getOption("max.print") -- omitted 104213 rows ]
> data<-select(data, c(playerID, yearID, AB, teamID, lgID, G, R, HR, SH))
> data<- arrange(data,playerID, teamID, yearID)
> View(data)
> glimpse(data)
Rows: 104,324
Columns: 9
$ playerID <chr> "aardsda01", "aardsda01", "aardsda01", "aardsda01", …
$ yearID   <int> 2015, 2008, 2007, 2006, 2012, 2013, 2009, 2010, 2004…
$ AB       <int> 1, 1, 0, 2, 0, 0, 0, 0, 0, 603, 600, 606, 547, 516, …
$ teamID   <chr> "ATL", "BOS", "CHA", "CHN", "NYA", "NYN", "SEA", "SE"
$ lgID     <chr> "NL", "AL", "AL", "NL", "AL", "NL", "AL", "AL", "NL"
$ G        <int> 33, 47, 25, 45, 1, 43, 73, 53, 11, 158, 155, 160, 14…
$ R        <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 117, 113, 84, 100, 103, 9…
$ HR       <int> 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 39, 29, 44, 38, 47, 3…
$ SH       <int> 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1…
> summarise(data, mean_run =mean(R))
  mean_run
1  18.7621
> summarise(data, mean_games = mean(G),
+           mean_SH = mean(SH, na.rm = TRUE))
  mean_games  mean_SH
1   51.28215 2.279202
> group_by(data,lgID)
# A tibble: 104,324 × 9
# Groups:   lgID [7]
   playerID  yearID    AB teamID lgID      G     R    HR    SH
   <chr>      <int> <int> <chr>  <chr> <int> <int> <int> <int>
 1 aardsda01   2015     1 ATL    NL       33     0     0     0
 2 aardsda01   2008     1 BOS    AL       47     0     0     0
 3 aardsda01   2007     0 CHA    AL       25     0     0     0
 4 aardsda01   2006     2 CHN    NL       45     0     0     1
 5 aardsda01   2012     0 NYA    AL        1     0     0     0
 6 aardsda01   2013     0 NYN    NL       43     0     0     0
 7 aardsda01   2009     0 SEA    AL       73     0     0     0
 8 aardsda01   2010     0 SEA    AL       53     0     0     0
 9 aardsda01   2004     0 SFN    NL       11     0     0     0
10 aaronha01   1966   603 ATL    NL      158   117    44     0
# … with 104,314 more rows
> summarise(group_by(data,lgID),mean(R))
# A tibble: 7 × 2
  lgID  `mean(R)`
  <chr>     <dbl>
1 AA         30.3
2 AL         18.2
3 FL         21.0
4 NL         18.7
5 PL         49.2
6 UA         14.4
7 NA         23.5
> ggplot(summarise(group_by(data,lgID),mean_home_run = mean(HR)), aes(x = lgID, y = mean_home_run, fill = lgID)) +
+     geom_bar(stat = "identity") +
+     theme_classic() +
+     labs(
+         x = "baseball league",
+         y = "Average home run",
+         title = paste(
+             "Example group_by() with summarise()"
+         )
+     )
Error in ggplot(summarise(group_by(data, lgID), mean_home_run = mean(HR)),  : 
  could not find function "ggplot"
> library(ggplot2)
> ggplot(summarise(group_by(data,lgID),mean_home_run = mean(HR)), aes(x = lgID, y = mean_home_run, fill = lgID)) +
+     geom_bar(stat = "identity") +
+     theme_classic() +
+     labs(
+         x = "baseball league",
+         y = "Average home run",
+         title = paste(
+             "Example group_by() with summarise()"
+         )
+     )
> ex1 <- data % > %
+     group_by(yearID) % > %
+     summarise(mean_game_year = mean(G))
Error in data % > % group_by(yearID) % > % summarise(mean_game_year = mean(G)) : 
  could not find function "% > %"
> ex1 <- data %>%
+     group_by(yearID) %>%
+     summarise(mean_game_year = mean(G))
> head(ex1)
# A tibble: 6 × 2
  yearID mean_game_year
   <int>          <dbl>
1   1871           20.0
2   1872           21.1
3   1873           28.8
4   1874           34.1
5   1875           28.7
6   1876           37.9
> ggplot(ex1, aes(x = yearID, y = mean_game_year)) +
+     geom_line() +
+     theme_classic() +
+     labs(
+         x = "Year",
+         y = "Average games played",
+         title = paste(
+             "Average games played from 1871 to 2016"
+         )
+     )
> ## Subsetting + Median
> data %>%
+     group_by(lgID) %>%
+     summarise(median_at_bat_league = median(AB), 
+               #Compute the median without the zero 
+               median_at_bat_league_no_zero = median(AB[AB > 0]))
# A tibble: 7 × 3
  lgID  median_at_bat_league median_at_bat_league_no_zero
  <chr>                <dbl>                        <dbl>
1 AA                   126                           128.
2 AL                    37                            87 
3 FL                    84.5                          88 
4 NL                    53                            64 
5 PL                   218                           218 
6 UA                    36                            36 
7 NA                    95                            95 
> data %>%
+     group_by(playerID) %>%
+     summarise(number_year = n()) %>%
+     arrange(desc(number_year))
# A tibble: 19,182 × 2
   playerID  number_year
   <chr>           <int>
 1 mcguide01          31
 2 henderi01          29
 3 newsobo01          29
 4 johnto01           28
 5 kaatji01           28
 6 ansonca01          27
 7 baineha01          27
 8 carltst01          27
 9 moyerja01          27
10 ryanno01           27
# … with 19,172 more rows
> data %>%
+     group_by(playerID) %>%
+     summarise(first_appearance = first(yearID),
+               last_appearance = last(yearID))
# A tibble: 19,182 × 3
   playerID  first_appearance last_appearance
   <chr>                <int>           <int>
 1 aardsda01             2015            2004
 2 aaronha01             1966            1976
 3 aaronto01             1968            1965
 4 aasedo01              1985            1989
 5 abadan01              2003            2001
 6 abadfe01              2016            2013
 7 abadijo01             1875            1875
 8 abbated01             1903            1910
 9 abbeybe01             1895            1892
10 abbeych01             1893            1897
# … with 19,172 more rows
> data %>%
+     group_by(teamID) %>%
+     summarise(second_game = nth(yearID, 2)) %>%
+     arrange(second_game)
# A tibble: 149 × 2
   teamID second_game
   <chr>        <int>
 1 BS1           1871
 2 CH1           1871
 3 FW1           1871
 4 RC1           1871
 5 BR1           1872
 6 CL1           1872
 7 MID           1872
 8 TRO           1872
 9 WS3           1872
10 WS4           1872
# … with 139 more rows
> # distinct values
> data %>%
+     group_by(teamID) %>%
+     summarise(number_player = n_distinct(playerID)) %>%
+     arrange(desc(number_player))
# A tibble: 149 × 2
   teamID number_player
   <chr>          <int>
 1 CHN             2051
 2 PHI             2036
 3 SLN             1971
 4 CIN             1912
 5 PIT             1877
 6 CLE             1855
 7 BOS             1783
 8 CHA             1744
 9 DET             1658
10 NYA             1658
# … with 139 more rows
> # Multiple groups
> data %>%
+     group_by(yearID, teamID) %>%
+     summarise(mean_games = mean(G)) %>%
+     arrange(desc(teamID, yearID))
`summarise()` has grouped output by 'yearID'. You can override using
the `.groups` argument.
Error in `arrange()`:
! `desc()` must be called with exactly one argument.
Run `rlang::last_error()` to see where the error occurred.
> group(data,G,R,Hr)
Error in group(data, G, R, Hr) : could not find function "group"
> 
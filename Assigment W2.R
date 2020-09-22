
R version 3.5.2 (2018-12-20) -- "Eggshell Igloo"
Copyright (C) 2018 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin15.6.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

During startup - Warning messages:
1: Setting LC_CTYPE failed, using "C" 
2: Setting LC_COLLATE failed, using "C" 
3: Setting LC_TIME failed, using "C" 
4: Setting LC_MESSAGES failed, using "C" 
5: Setting LC_MONETARY failed, using "C" 
[R.app GUI 1.70 (7612) x86_64-apple-darwin15.6.0]

WARNING: You're using a non-UTF8 locale, therefore only ASCII characters will work.
Please read R for Mac OS X FAQ (see Help) section 9 and adjust your system preferences accordingly.
[History restored from /Users/anwarsan/.Rapp.history]

> x <- 4L
> class(x)
[1] "integer"
> x <- c(4, TRUE)
> class(x)
[1] "numeric"
> x <- c(1,3, 5)
>  <- c(3, 2, 10)
Error: unexpected assignment in " <-"
> y <- c(3, 2, 10)
> cbind(x, y)
     x  y
[1,] 1  3
[2,] 3  2
[3,] 5 10
> x <- list(2, "a", "b", TRUE)
> x[[1]] 
[1] 2
> class(x)
[1] "list"
> x <- 1:4
> y <- 2:3
> x + y
[1] 3 5 5 7
> x <- c(17, 14, 4, 5, 13, 12, 10)
> x[x == 4] > 10
[1] FALSE
> x[x > 4] <- 10
> x
[1] 10 10  4 10 10 10 10
> x[x >= 11] <- 4
> x
[1] 10 10  4 10 10 10 10
> x[x >= 10] <- 4
> x
[1] 4 4 4 4 4 4 4
> x[x < 10] <- 4
> x
[1] 4 4 4 4 4 4 4
> x[x > 10] <- 4
> x
[1] 4 4 4 4 4 4 4
> x[x == 10] <- 4
> x
[1] 4 4 4 4 4 4 4
> x[x > 10] == 4
logical(0)
> q<-read.csv("hw1_data.csv")
> q
    Ozone Solar.R Wind Temp Month Day
1      41     190  7.4   67     5   1
2      36     118  8.0   72     5   2
3      12     149 12.6   74     5   3
4      18     313 11.5   62     5   4
5      NA      NA 14.3   56     5   5
6      28      NA 14.9   66     5   6
7      23     299  8.6   65     5   7
8      19      99 13.8   59     5   8
9       8      19 20.1   61     5   9
10     NA     194  8.6   69     5  10
11      7      NA  6.9   74     5  11
12     16     256  9.7   69     5  12
13     11     290  9.2   66     5  13
14     14     274 10.9   68     5  14
15     18      65 13.2   58     5  15
16     14     334 11.5   64     5  16
17     34     307 12.0   66     5  17
18      6      78 18.4   57     5  18
19     30     322 11.5   68     5  19
20     11      44  9.7   62     5  20
21      1       8  9.7   59     5  21
22     11     320 16.6   73     5  22
23      4      25  9.7   61     5  23
24     32      92 12.0   61     5  24
25     NA      66 16.6   57     5  25
26     NA     266 14.9   58     5  26
27     NA      NA  8.0   57     5  27
28     23      13 12.0   67     5  28
29     45     252 14.9   81     5  29
30    115     223  5.7   79     5  30
31     37     279  7.4   76     5  31
32     NA     286  8.6   78     6   1
33     NA     287  9.7   74     6   2
34     NA     242 16.1   67     6   3
35     NA     186  9.2   84     6   4
36     NA     220  8.6   85     6   5
37     NA     264 14.3   79     6   6
38     29     127  9.7   82     6   7
39     NA     273  6.9   87     6   8
40     71     291 13.8   90     6   9
41     39     323 11.5   87     6  10
42     NA     259 10.9   93     6  11
43     NA     250  9.2   92     6  12
44     23     148  8.0   82     6  13
45     NA     332 13.8   80     6  14
46     NA     322 11.5   79     6  15
47     21     191 14.9   77     6  16
48     37     284 20.7   72     6  17
49     20      37  9.2   65     6  18
50     12     120 11.5   73     6  19
51     13     137 10.3   76     6  20
52     NA     150  6.3   77     6  21
53     NA      59  1.7   76     6  22
54     NA      91  4.6   76     6  23
55     NA     250  6.3   76     6  24
56     NA     135  8.0   75     6  25
57     NA     127  8.0   78     6  26
58     NA      47 10.3   73     6  27
59     NA      98 11.5   80     6  28
60     NA      31 14.9   77     6  29
61     NA     138  8.0   83     6  30
62    135     269  4.1   84     7   1
63     49     248  9.2   85     7   2
64     32     236  9.2   81     7   3
65     NA     101 10.9   84     7   4
66     64     175  4.6   83     7   5
67     40     314 10.9   83     7   6
68     77     276  5.1   88     7   7
69     97     267  6.3   92     7   8
70     97     272  5.7   92     7   9
71     85     175  7.4   89     7  10
72     NA     139  8.6   82     7  11
73     10     264 14.3   73     7  12
74     27     175 14.9   81     7  13
75     NA     291 14.9   91     7  14
76      7      48 14.3   80     7  15
77     48     260  6.9   81     7  16
78     35     274 10.3   82     7  17
79     61     285  6.3   84     7  18
80     79     187  5.1   87     7  19
81     63     220 11.5   85     7  20
82     16       7  6.9   74     7  21
83     NA     258  9.7   81     7  22
84     NA     295 11.5   82     7  23
85     80     294  8.6   86     7  24
86    108     223  8.0   85     7  25
87     20      81  8.6   82     7  26
88     52      82 12.0   86     7  27
89     82     213  7.4   88     7  28
90     50     275  7.4   86     7  29
91     64     253  7.4   83     7  30
92     59     254  9.2   81     7  31
93     39      83  6.9   81     8   1
94      9      24 13.8   81     8   2
95     16      77  7.4   82     8   3
96     78      NA  6.9   86     8   4
97     35      NA  7.4   85     8   5
98     66      NA  4.6   87     8   6
99    122     255  4.0   89     8   7
100    89     229 10.3   90     8   8
101   110     207  8.0   90     8   9
102    NA     222  8.6   92     8  10
103    NA     137 11.5   86     8  11
104    44     192 11.5   86     8  12
105    28     273 11.5   82     8  13
106    65     157  9.7   80     8  14
107    NA      64 11.5   79     8  15
108    22      71 10.3   77     8  16
109    59      51  6.3   79     8  17
110    23     115  7.4   76     8  18
111    31     244 10.9   78     8  19
112    44     190 10.3   78     8  20
113    21     259 15.5   77     8  21
114     9      36 14.3   72     8  22
115    NA     255 12.6   75     8  23
116    45     212  9.7   79     8  24
117   168     238  3.4   81     8  25
118    73     215  8.0   86     8  26
119    NA     153  5.7   88     8  27
120    76     203  9.7   97     8  28
121   118     225  2.3   94     8  29
122    84     237  6.3   96     8  30
123    85     188  6.3   94     8  31
124    96     167  6.9   91     9   1
125    78     197  5.1   92     9   2
126    73     183  2.8   93     9   3
127    91     189  4.6   93     9   4
128    47      95  7.4   87     9   5
129    32      92 15.5   84     9   6
130    20     252 10.9   80     9   7
131    23     220 10.3   78     9   8
132    21     230 10.9   75     9   9
133    24     259  9.7   73     9  10
134    44     236 14.9   81     9  11
135    21     259 15.5   76     9  12
136    28     238  6.3   77     9  13
137     9      24 10.9   71     9  14
138    13     112 11.5   71     9  15
139    46     237  6.9   78     9  16
140    18     224 13.8   67     9  17
141    13      27 10.3   76     9  18
142    24     238 10.3   68     9  19
143    16     201  8.0   82     9  20
144    13     238 12.6   64     9  21
145    23      14  9.2   71     9  22
146    36     139 10.3   81     9  23
147     7      49 10.3   69     9  24
148    14      20 16.6   63     9  25
149    30     193  6.9   70     9  26
150    NA     145 13.2   77     9  27
151    14     191 14.3   75     9  28
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30
> x[2,]
Error in x[2, ] : incorrect number of dimensions
> mean(x)
[1] 4
> mean(q)
[1] NA
Warning message:
In mean.default(q) : argument is not numeric or logical: returning NA
> help(mean)
starting httpd help server ... done
> help(mean)
> mean(q, na.rs=T)
[1] NA
Warning message:
In mean.default(q, na.rs = T) :
  argument is not numeric or logical: returning NA
> mean(q, na.rm=T)
[1] NA
Warning message:
In mean.default(q, na.rm = T) :
  argument is not numeric or logical: returning NA
> mean(q, na.rm=F)
[1] NA
Warning message:
In mean.default(q, na.rm = F) :
  argument is not numeric or logical: returning NA
> summary(q)
     Ozone           Solar.R           Wind             Temp      
 Min.   :  1.00   Min.   :  7.0   Min.   : 1.700   Min.   :56.00  
 1st Qu.: 18.00   1st Qu.:115.8   1st Qu.: 7.400   1st Qu.:72.00  
 Median : 31.50   Median :205.0   Median : 9.700   Median :79.00  
 Mean   : 42.13   Mean   :185.9   Mean   : 9.958   Mean   :77.88  
 3rd Qu.: 63.25   3rd Qu.:258.8   3rd Qu.:11.500   3rd Qu.:85.00  
 Max.   :168.00   Max.   :334.0   Max.   :20.700   Max.   :97.00  
 NA's   :37       NA's   :7                                       
     Month            Day      
 Min.   :5.000   Min.   : 1.0  
 1st Qu.:6.000   1st Qu.: 8.0  
 Median :7.000   Median :16.0  
 Mean   :6.993   Mean   :15.8  
 3rd Qu.:8.000   3rd Qu.:23.0  
 Max.   :9.000   Max.   :31.0  
                               
> mean(q$Ozone)
[1] NA
> attach(q)
> mean(Ozone)
[1] NA
> mean(Wind)
[1] 9.957516
> names(q)
[1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day"    
> mean(Temp, Month=6)
[1] 77.88235
> mean(Temp, Mont==6)
Error in mean.default(Temp, Mont == 6) : object 'Mont' not found
> mean(Temp, Month==6)
Error in mean.default(Temp, Month == 6) : 
  'trim' must be numeric of length one
> max(Ozone, Month=5)
[1] NA
> 
> mean(Temp[32:61])
[1] 79.1
> mean(Ozone[32:153])
[1] NA
> mean(Temp[91:153])
[1] 80.53968
> bad<-is.na(Ozone[32:153])
> mean(!bad)
[1] 0.7377049
> mean(Solar.R[32:153])
[1] NA
> ugly<-is.na(Solar.R[32:153])
> mean(!ugly)
[1] 0.9754098
> !ugly
  [1]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
 [15]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
 [29]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
 [43]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
 [57]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE
 [71]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
 [85]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
 [99]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[113]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
> Solar.R(!ugly)
Error in Solar.R(!ugly) : could not find function "Solar.R"
> mean(Solar.R, Ozone>32, Temp>90)
Error in mean.default(Solar.R, Ozone > 32, Temp > 90) : 
  'trim' must be numeric of length one
In addition: Warning message:
In if (na.rm) x <- x[!is.na(x)] :
  the condition has length > 1 and only the first element will be used
> mean(Solar.R, Ozone>32)
Error in mean.default(Solar.R, Ozone > 32) : 
  'trim' must be numeric of length one
> sum(Solar.R[1:31])
[1] NA
> sum(!ugly)
[1] 119
> q(sum(!ugly))
Error in q(sum(!ugly)) : 'save' must be a character vector of length one.
> Solar.R(sum(!ugly))
Error in Solar.R(sum(!ugly)) : could not find function "Solar.R"
> good<-complete.cases(Ozone[32:153],Temp[91:153])
Error in complete.cases(Ozone[32:153], Temp[91:153]) : 
  not all arguments have the same length
> good<-complete.cases(Ozone,Temp)
> good
  [1]  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE
 [15]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE
 [29]  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE  TRUE FALSE
 [43] FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE
 [57] FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
 [71]  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE
 [85]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
 [99]  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
[113]  TRUE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[127]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[141]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE
> good(Ozone)
Error in good(Ozone) : could not find function "good"
> install.packages("swirl")
--- Please select a CRAN mirror for use in this session ---
also installing the dependencies 'sys', 'assertthat', 'askpass', 'glue', 'magrittr', 'stringi', 'cli', 'crayon', 'praise', 'R6', 'rlang', 'withr', 'curl', 'jsonlite', 'mime', 'openssl', 'bitops', 'stringr', 'testthat', 'httr', 'yaml', 'RCurl', 'digest'

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/sys_3.1.tgz'
Content type 'application/x-gzip' length 46533 bytes (45 KB)
==================================================
downloaded 45 KB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/assertthat_0.2.0.tgz'
Content type 'application/x-gzip' length 52476 bytes (51 KB)
==================================================
downloaded 51 KB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/askpass_1.1.tgz'
Content type 'application/x-gzip' length 21399 bytes (20 KB)
==================================================
downloaded 20 KB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/glue_1.3.0.tgz'
Content type 'application/x-gzip' length 93553 bytes (91 KB)
==================================================
downloaded 91 KB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/magrittr_1.5.tgz'
Content type 'application/x-gzip' length 152395 bytes (148 KB)
==================================================
downloaded 148 KB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/stringi_1.3.1.tgz'
Content type 'application/x-gzip' length 13587539 bytes (13.0 MB)
==================================================
downloaded 13.0 MB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/cli_1.0.1.tgz'
Content type 'application/x-gzip' length 574111 bytes (560 KB)
==================================================
downloaded 560 KB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/crayon_1.3.4.tgz'
Content type 'application/x-gzip' length 750568 bytes (732 KB)
==================================================
downloaded 732 KB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/praise_1.0.0.tgz'
Content type 'application/x-gzip' length 16137 bytes (15 KB)
==================================================
downloaded 15 KB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/R6_2.4.0.tgz'
Content type 'application/x-gzip' length 56633 bytes (55 KB)
==================================================
downloaded 55 KB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/rlang_0.3.1.tgz'
Content type 'application/x-gzip' length 1122574 bytes (1.1 MB)
==================================================
downloaded 1.1 MB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/withr_2.1.2.tgz'
Content type 'application/x-gzip' length 151252 bytes (147 KB)
==================================================
downloaded 147 KB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/curl_3.3.tgz'
Content type 'application/x-gzip' length 436494 bytes (426 KB)
==================================================
downloaded 426 KB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/jsonlite_1.6.tgz'
Content type 'application/x-gzip' length 1114907 bytes (1.1 MB)
==================================================
downloaded 1.1 MB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/mime_0.6.tgz'
Content type 'application/x-gzip' length 34823 bytes (34 KB)
==================================================
downloaded 34 KB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/openssl_1.2.2.tgz'
Content type 'application/x-gzip' length 2665897 bytes (2.5 MB)
==================================================
downloaded 2.5 MB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/bitops_1.0-6.tgz'
Content type 'application/x-gzip' length 25449 bytes (24 KB)
==================================================
downloaded 24 KB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/stringr_1.4.0.tgz'
Content type 'application/x-gzip' length 208803 bytes (203 KB)
==================================================
downloaded 203 KB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/testthat_2.0.1.tgz'
Content type 'application/x-gzip' length 2215249 bytes (2.1 MB)
==================================================
downloaded 2.1 MB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/httr_1.4.0.tgz'
Content type 'application/x-gzip' length 481252 bytes (469 KB)
==================================================
downloaded 469 KB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/yaml_2.2.0.tgz'
Content type 'application/x-gzip' length 196510 bytes (191 KB)
==================================================
downloaded 191 KB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/RCurl_1.95-4.12.tgz'
Content type 'application/x-gzip' length 985976 bytes (962 KB)
==================================================
downloaded 962 KB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/digest_0.6.18.tgz'
Content type 'application/x-gzip' length 187193 bytes (182 KB)
==================================================
downloaded 182 KB

trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/swirl_2.4.3.tgz'
Content type 'application/x-gzip' length 345675 bytes (337 KB)
==================================================
downloaded 337 KB

tar: Failed to set default locale
tar: Failed to set default locale
tar: Failed to set default locale
tar: Failed to set default locale
tar: Failed to set default locale
tar: Failed to set default locale
tar: Failed to set default locale
tar: Failed to set default locale
tar: Failed to set default locale
tar: Failed to set default locale
tar: Failed to set default localetar: Failed to set default locale
tar: Failed to set default locale
tar: Failed to set default locale
tar: Failed to set default localetar: Failed to set default locale
tar: Failed to set default locale
tar: Failed to set default locale
tar: Failed to set default locale
tar: Failed to set default locale
tar: Failed to set default locale
tar: Failed to set default locale
tar: Failed to set default locale
tar: Failed to set default locale

The downloaded binary packages are in
	/var/folders/z2/fsr3hf6j6cn61s87b2hj3xxr0000gn/T//Rtmp0L9dkK/downloaded_packages
> library(swirl)

| Hi! I see that you have some variables saved in your workspace. To keep things running
| smoothly, I recommend you clean up before starting swirl.

| Type ls() to see a list of the variables in your workspace. Then, type rm(list=ls())
| to clear your workspace.

| Type swirl() when you are ready to begin.

> ls()
[1] "bad"  "good" "q"    "ugly" "x"    "y"   
> rm(list=ls())
> swirl()

| Welcome to swirl! Please sign in. If you've been here before, use the same name as you
| did then. If you are new, call yourself something unique.

What shall I call you? anwar

| Thanks, anwar. Let's cover a couple of quick housekeeping items before we begin our
| first lesson. First of all, you should know that when you see '...', that means you
| should press Enter when you are done reading and ready to continue.

...  <-- That's your cue to press Enter to continue

| Also, when you see 'ANSWER:', the R prompt (>), or when you are asked to select from a
| list, that means it's your turn to enter a response, then press Enter to continue.

Select 1, 2, or 3 and press Enter 

1: Continue.
2: Proceed.
3: Let's get going!

Selection: 1

| You can exit swirl and return to the R prompt (>) at any time by pressing the Esc key.
| If you are already at the prompt, type bye() to exit and save your progress. When you
| exit properly, you'll see a short message letting you know you've done so.

| When you are at the R prompt (>):
| -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl will ignore what you
| do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

| Let's get started!

...x7UHipmB2JO0ciwD

| To begin, you must install a course. I can install a course for you from the internet,
| or I can send you to a web page (https://github.com/swirldev/swirl_courses) which will
| provide course options and directions for installing courses yourself. (If you are not
| connected to the internet, type 0 to exit.)

1: R Programming: The basics of programming in R
2: Regression Models: The basics of regression modeling in R
3: Statistical Inference: The basics of statistical inference in R
4: Exploratory Data Analysis: The basics of exploring data in R
5: Don't install anything for me. I'll do it myself.

Selection: 1
  |===============================================================================| 100%

| Course installed successfully!


| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files     
 3: Sequences of Numbers       4: Vectors                 
 5: Missing Values             6: Subsetting Vectors      
 7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply       
11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times         
15: Base Graphics             

Selection: 0

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files     
 3: Sequences of Numbers       4: Vectors                 
 5: Missing Values             6: Subsetting Vectors      
 7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply       
11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times         
15: Base Graphics             

Selection: 1
  |                                                                               |   0%

| In this lesson, we will explore some basic building blocks of the R programming
| language.

...
  |==                                                                             |   3%
| If at any point you'd like more information on a particular topic related to R, you
| can type help.start() at the prompt, which will open a menu of resources (either
| within RStudio or your default web browser, depending on your setup). Alternatively, a
| simple web search often yields the answer you're looking for.

...
  |====                                                                           |   5%
| In its simplest form, R can be used as an interactive calculator. Type 5 + 7 and press
| Enter.

> 
> 5+7
[1] 12

| Excellent job!
  |======                                                                         |   8%
| R simply prints the result of 12 by default. However, R is a programming language and
| often the reason we use a programming language as opposed to a calculator is to
| automate some process or avoid unnecessary repetition.

...
  |========                                                                       |  11%
| In this case, we may want to use our result from above in a second calculation.
| Instead of retyping 5 + 7 every time we need it, we can just create a new variable
| that stores the result.

...
  |==========                                                                     |  13%
| The way you assign a value to a variable in R is by using the assignment operator,
| which is just a 'less than' symbol followed by a 'minus' sign. It looks like this: <-

...
  |============                                                                   |  16%
| Think of the assignment operator as an arrow. You are assigning the value on the right
| side of the arrow to the variable name on the left side of the arrow.

...
  |===============                                                                |  18%
| To assign the result of 5 + 7 to a new variable called x, you type x <- 5 + 7. This
| can be read as 'x gets 5 plus 7'. Give it a try now.

> x<-5+7

| All that hard work is paying off!
  |=================                                                              |  21%
| You'll notice that R did not print the result of 12 this time. When you use the
| assignment operator, R assumes that you don't want to see the result immediately, but
| rather that you intend to use the result for something else later on.

...
  |===================                                                            |  24%
| To view the contents of the variable x, just type x and press Enter. Try it now.

> x
[1] 12

| You are quite good my friend!
  |=====================                                                          |  26%
| Now, store the result of x - 3 in a new variable called y.

> y<-x-3

| You got it right!
  |=======================                                                        |  29%
| What is the value of y? Type y to find out.

> y
[1] 9

| You got it right!
  |=========================                                                      |  32%
| Now, let's create a small collection of numbers called a vector. Any object that
| contains data is called a data structure and numeric vectors are the simplest type of
| data structure in R. In fact, even a single number is considered a vector of length
| one.

...
  |===========================                                                    |  34%
| The easiest way to create a vector is with the c() function, which stands for
| 'concatenate' or 'combine'. To create a vector containing the numbers 1.1, 9, and
| 3.14, type c(1.1, 9, 3.14). Try it now and store the result in a variable called z.

> z<-c(1.1, 9, 3.14)

| You got it right!
  |=============================                                                  |  37%
| Anytime you have questions about a particular function, you can access R's built-in
| help files via the `?` command. For example, if you want more information on the c()
| function, type ?c without the parentheses that normally follow a function name. Give
| it a try.

> ?c

| You nailed it! Good job!
  |===============================                                                |  39%
| Type z to view its contents. Notice that there are no commas separating the values in
| the output.

> z
[1] 1.10 9.00 3.14

| All that hard work is paying off!
  |=================================                                              |  42%
| You can combine vectors to make a new vector. Create a new vector that contains z,
| 555, then z again in that order. Don't assign this vector to a new variable, so that
| we can just see the result immediately.

> z<-c(5,5,5)

| Almost! Try again. Or, type info() for more options.

| Type c(z, 555, z). Don't create a new variable. We just want to view the result.

> c(z, 555, z)
[1]   1.10   9.00   3.14 555.00   1.10   9.00   3.14

| You are amazing!
  |===================================                                            |  45%
| Numeric vectors can be used in arithmetic expressions. Type the following to see what
| happens: z * 2 + 100.

> z*2+100
[1] 102.20 118.00 106.28

| You nailed it! Good job!
  |=====================================                                          |  47%
| First, R multiplied each of the three elements in z by 2. Then it added 100 to each
| element to get the result you see above.

...
  |========================================                                       |  50%
| Other common arithmetic operators are `+`, `-`, `/`, and `^` (where x^2 means 'x
| squared'). To take the square root, use the sqrt() function and to take the absolute
| value, use the abs() function.

...
  |==========================================                                     |  53%
| Take the square root of z - 1 and assign it to a new variable called my_sqrt.

> my_sqrt<-sqrt(z-1)

| You got it right!
  |============================================                                   |  55%
| Before we view the contents of the my_sqrt variable, what do you think it contains?

1: a vector of length 0 (i.e. an empty vector)
2: a single number (i.e a vector of length 1)
3: a vector of length 3

Selection: 2

| One more time. You can do it!

| Think about how R handled the other 'vectorized' operations: element-by-element.

1: a vector of length 0 (i.e. an empty vector)
2: a vector of length 3
3: a single number (i.e a vector of length 1)

Selection: 1

| Not quite, but you're learning! Try again.

| Think about how R handled the other 'vectorized' operations: element-by-element.

1: a vector of length 3
2: a vector of length 0 (i.e. an empty vector)
3: a single number (i.e a vector of length 1)

Selection: 1

| That's the answer I was looking for.
  |==============================================                                 |  58%
| Print the contents of my_sqrt.

> print(my_sqrt)
[1] 0.3162278 2.8284271 1.4628739

| Not quite, but you're learning! Try again. Or, type info() for more options.

| Just type my_sqrt and press Enter to view its value.

> my_sqrt
[1] 0.3162278 2.8284271 1.4628739

| That's a job well done!
  |================================================                               |  61%
| As you may have guessed, R first subtracted 1 from each element of z, then took the
| square root of each element. This leaves you with a vector of the same length as the
| original vector z.

...
  |==================================================                             |  63%
| Now, create a new variable called my_div that gets the value of z divided by my_sqrt.

> my_div<-z/my_sqrt

| Keep working like that and you'll get there!
  |====================================================                           |  66%
| Which statement do you think is true?

1: my_div is undefined
2: The first element of my_div is equal to the first element of z divided by the first element of my_sqrt, and so on...
3: my_div is a single number (i.e a vector of length 1)

Selection: 2

| You are really on a roll!
  |======================================================                         |  68%
| Go ahead and print the contents of my_div.

> my_div
[1] 3.478505 3.181981 2.146460

| Your dedication is inspiring!
  |========================================================                       |  71%
| When given two vectors of the same length, R simply performs the specified arithmetic
| operation (`+`, `-`, `*`, etc.) element-by-element. If the vectors are of different
| lengths, R 'recycles' the shorter vector until it is the same length as the longer
| vector.

...
  |==========================================================                     |  74%
| When we did z * 2 + 100 in our earlier example, z was a vector of length 3, but
| technically 2 and 100 are each vectors of length 1.

...
  |============================================================                   |  76%
| Behind the scenes, R is 'recycling' the 2 to make a vector of 2s and the 100 to make a
| vector of 100s. In other words, when you ask R to compute z * 2 + 100, what it really
| computes is this: z * c(2, 2, 2) + c(100, 100, 100).

...
  |==============================================================                 |  79%
| To see another example of how this vector 'recycling' works, try adding c(1, 2, 3, 4)
| and c(0, 10). Don't worry about saving the result in a new variable.

> 
> c(1,2,3,4)
[1] 1 2 3 4

| Almost! Try again. Or, type info() for more options.

| Enter c(1, 2, 3, 4) + c(0, 10) in the console to see how R adds two vectors of
| different length. Don't assign the result to a variable.

> c(1,2,3,4)+c(0,10)
[1]  1 12  3 14

| Nice work!
  |================================================================               |  82%
| If the length of the shorter vector does not divide evenly into the length of the
| longer vector, R will still apply the 'recycling' method, but will throw a warning to
| let you know something fishy might be going on.

...
  |===================================================================            |  84%
| Try c(1, 2, 3, 4) + c(0, 10, 100) for an example.

> c(1, 2, 3, 4) + c(0, 10, 100)
[1]   1  12 103   4
Warning message:
In c(1, 2, 3, 4) + c(0, 10, 100) :
  longer object length is not a multiple of shorter object length

| Keep up the great work!
  |=====================================================================          |  87%
| Before concluding this lesson, I'd like to show you a couple of time-saving tricks.

...
  |=======================================================================        |  89%
| Earlier in the lesson, you computed z * 2 + 100. Let's pretend that you made a mistake
| and that you meant to add 1000 instead of 100. You could either re-type the
| expression, or...

...
  |=========================================================================      |  92%
| In many programming environments, the up arrow will cycle through previous commands.
| Try hitting the up arrow on your keyboard until you get to this command (z * 2 + 100),
| then change 100 to 1000 and hit Enter. If the up arrow doesn't work for you, just type
| the corrected command.

> 
> z*2+100
[1] 102.20 118.00 106.28

| Not quite, but you're learning! Try again. Or, type info() for more options.

| If your environment does not support the up arrow feature, then just type the
| corrected command to move on.

> z*2+1000
[1] 1002.20 1018.00 1006.28

| Excellent job!
  |===========================================================================    |  95%
| Finally, let's pretend you'd like to view the contents of a variable that you created
| earlier, but you can't seem to remember if you named it my_div or myDiv. You could try
| both and see what works, or...

...
  |=============================================================================  |  97%
| You can type the first two letters of the variable name, then hit the Tab key
| (possibly more than once). Most programming environments will provide a list of
| variables that you've created that begin with 'my'. This is called auto-completion and
| can be quite handy when you have many variables in your workspace. Give it a try. (If
| auto-completion doesn't work for you, just type my_div and press Enter.)

> 
> my
Error: object 'my' not found
> my_div
[1] 3.478505 3.181981 2.146460

| You are amazing!
  |===============================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? manwarsan@gmail.com
What is your assignment token? x7UHipmB2JO0ciwD
Grade submission succeeded!

| Nice work!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files     
 3: Sequences of Numbers       4: Vectors                 
 5: Missing Values             6: Subsetting Vectors      
 7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply       
11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times         
15: Base Graphics             

Selection: 0

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 2

| OK. I'm opening the swirl courses web page in your browser.

| Leaving swirl now. Type swirl() to resume.

> swirl()

| Welcome to swirl! Please sign in. If you've been here before, use the same name as you
| did then. If you are new, call yourself something unique.

What shall I call you? anwar

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files     
 3: Sequences of Numbers       4: Vectors                 
 5: Missing Values             6: Subsetting Vectors      
 7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply       
11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times         
15: Base Graphics             

Selection: 2
  |                                                                               |   0%

| In this lesson, you'll learn how to examine your local workspace in R and begin to
| explore the relationship between your workspace and the file system of your machine.

...
  |==                                                                             |   3%
| Because different operating systems have different conventions with regards to things
| like file paths, the outputs of these commands may vary across machines.

...
  |====                                                                           |   5%
| However it's important to note that R provides a common API (a common set of commands)
| for interacting with files, that way your code will work across different kinds of
| computers.

...
  |======                                                                         |   8%
| Let's jump right in so you can get a feel for how these special functions work!

...
  |========                                                                       |  10%
| Determine which directory your R session is using as its current working directory
| using getwd().

> getwd()
[1] "/Users/anwarsan/Downloads"

| You are amazing!
  |==========                                                                     |  13%
| List all the objects in your local workspace using ls().

> ls()
[1] "my_div"  "my_sqrt" "x"       "y"       "z"      

| Keep working like that and you'll get there!
  |============                                                                   |  15%
| Some R commands are the same as their equivalents commands on Linux or on a Mac. Both
| Linux and Mac operating systems are based on an operating system called Unix. It's
| always a good idea to learn more about Unix!

...
  |==============                                                                 |  18%
| Assign 9 to x using x <- 9.

> x<-9

| Excellent work!
  |================                                                               |  21%
| Now take a look at objects that are in your workspace using ls().

> ls()
[1] "my_div"  "my_sqrt" "x"       "y"       "z"      

| You nailed it! Good job!
  |==================                                                             |  23%
| List all the files in your working directory using list.files() or dir().

> list.files()
 [1] "Adobe_Zii_2019_4.0.9.dmg"                                                                         
 [2] "Anaconda3-2018.12-MacOSX-x86_64.pkg"                                                              
 [3] "AppCleaner.app"                                                                                   
 [4] "AppCleaner_3.5.zip"                                                                               
 [5] "Aquaman (2018) [WEBRip] [720p] [YTS.AM]"                                                          
 [6] "Aquaman (2018) [WEBRip] [720p] [YTS.AM].torrent"                                                  
 [7] "Bohemian Rhapsody (2018) [BluRay] [720p] [YTS.AM]"                                                
 [8] "Bohemian Rhapsody (2018) [BluRay] [720p] [YTS.AM].torrent"                                        
 [9] "Data-Science-Skill_README.md at master \302\267 arikunco_Data-Science-Skill \302\267 GitHub.htm"  
[10] "Data-Science-Skill_README.md at master \302\267 arikunco_Data-Science-Skill \302\267 GitHub_files"
[11] "FakeAlbumCoverGame.ipynb"                                                                         
[12] "FakeAlbumCoverGame.py"                                                                            
[13] "Fantastic Beasts The Crimes Of Grindelwald (2018) [WEBRip] [1080p] [YTS.AM]"                      
[14] "Fantastic.Beasts.The.Crimes.of.Grindelwald.2018.720p.BluRay.x264-SPARKS 4.srt"                    
[15] "Fantastic.Beasts.The.Crimes.of.Grindelwald.2018.720p.BluRay.x264-SPARKS.srt"                      
[16] "IBM SPSS Statistics v23.0.0 for MAC.OSX"                                                          
[17] "IBMSPSSv23.0.0MACOSX.zip"                                                                         
[18] "IYKRA - Data Science & Data Engineering Course (XL Axiata-Mega Kuningan).rar"                     
[19] "Install Spotify.app"                                                                              
[20] "Instant Family (2018) [BluRay] [720p] [YTS.AM]"                                                   
[21] "Instant Family (2018) [BluRay] [720p] [YTS.AM].torrent"                                           
[22] "Isn't It Romantic (2019) [WEBRip] [720p] [YTS.AM]"                                                
[23] "Isn't It Romantic (2019) [WEBRip] [720p] [YTS.AM].torrent"                                        
[24] "Khalid ft. Kane Brown - Saturday Nights REMIX (Official Video).mp3"                               
[25] "Kunto Aji - Rehat (Official Music Video).mp3"                                                     
[26] "Look Away (2018) [BluRay] [720p] [YTS.AM]"                                                        
[27] "Look Away (2018) [BluRay] [720p] [YTS.AM].torrent"                                                
[28] "MEGA-RECOVERYKEY.txt"                                                                             
[29] "MS Office 2019 + AutoUpdater"                                                                     
[30] "MS Office 2019 + AutoUpdater.zip"                                                                 
[31] "Machine_learning_complete.zip"                                                                    
[32] "Office 2019 Serializer.pkg.zip"                                                                   
[33] "PROPOSAL PENELITIAN.docx"                                                                         
[34] "PY0101EN-1-1-Types.ipynb"                                                                         
[35] "PY0101EN-1-2-Strings.ipynb"                                                                       
[36] "PY0101EN-2-1-Tuples.ipynb"                                                                        
[37] "PY0101EN-2-2-Lists.ipynb"                                                                         
[38] "PY0101EN-2-3-Dictionaries.ipynb"                                                                  
[39] "PY0101EN-2-4-Sets.ipynb"                                                                          
[40] "PY0101EN-3-1-Conditions.ipynb"                                                                    
[41] "PY0101EN-3-2-Loops.ipynb"                                                                         
[42] "PY0101EN-3-3-Functions.ipynb"                                                                     
[43] "PY0101EN-3-4-Classes.ipynb"                                                                       
[44] "PY0101EN-4-1-ReadFile.ipynb"                                                                      
[45] "PY0101EN-4-2-WriteFile.ipynb"                                                                     
[46] "PY0101EN-5-1-Numpy1D.ipynb"                                                                       
[47] "PY0101EN-5-2-Numpy2D.ipynb"                                                                       
[48] "Pembahasan Analisis Data Survey Gabungan.docx"                                                    
[49] "Postgres-2.2.2-11.dmg"                                                                            
[50] "RStudio-1.0.153.dmg"                                                                              
[51] "Ralph Breaks The Internet (2018) [WEBRip] [1080p] [YTS.AM]"                                       
[52] "Search Manager.dmg"                                                                               
[53] "Spider-Man Into The Spider-Verse (2018) [WEBRip] [720p] [YTS.AM]"                                 
[54] "Spider-Man Into the Spider-Verse (2018) [WEBRip] [720p] [YTS.AM].torrent"                         
[55] "Waktu Yang Salah - Fiersa Besari (Cover) by Hanin Dhiya.mp3"                                      
[56] "Without Me - Halsey (cover) by Greg Gontier.mp3"                                                  
[57] "XQuartz-2.7.11.dmg.download"                                                                      
[58] "fantastic-beasts-and-where-to-find-them-2_HI_english-1941438.zip"                                 
[59] "fantastic-beasts-and-where-to-find-them-2_indonesian-1933216"                                     
[60] "fantastic-beasts-and-where-to-find-them-2_indonesian-1933216.zip"                                 
[61] "file"                                                                                             
[62] "hw1_data.csv"                                                                                     
[63] "index (1).mp4"                                                                                    
[64] "index (10).mp4"                                                                                   
[65] "index (11).mp4"                                                                                   
[66] "index (12).mp4"                                                                                   
[67] "index (13).mp4"                                                                                   
[68] "index (14).mp4"                                                                                   
[69] "index (15).mp4"                                                                                   
[70] "index (2).mp4"                                                                                    
[71] "index (3).mp4"                                                                                    
[72] "index (4).mp4"                                                                                    
[73] "index (5).mp4"                                                                                    
[74] "index (6).mp4"                                                                                    
[75] "index (7).mp4"                                                                                    
[76] "index (8).mp4"                                                                                    
[77] "index (9).mp4"                                                                                    
[78] "index.mp4"                                                                                        
[79] "jre-8u201-macosx-x64.dmg"                                                                         
[80] "music"                                                                                            
[81] "mysql-8.0.15-macos10.14-x86_64.dmg"                                                               
[82] "mysql-workbench-community-8.0.15-macos-x86_64.dmg"                                                
[83] "pgadmin4-4.2.dmg"                                                                                 
[84] "photo"                                                                                            
[85] "postgresql-11.2-1-osx.dmg"                                                                        
[86] "quiz1_data.zip"                                                                                   
[87] "ralph-breaks-the-internet-wreck-it-ralph-2_HI_english-1933986.zip"                                
[88] "ralph-breaks-the-internet-wreck-it-ralph-2_indonesian-1931250.zip"                                
[89] "uTorrent.dmg"                                                                                     
[90] "vlc-3.0.6.dmg"                                                                                    

| You are really on a roll!
  |====================                                                           |  26%
| As we go through this lesson, you should be examining the help page for each new
| function. Check out the help page for list.files with the command ?list.files.

> ?list.files

| Excellent work!
  |======================                                                         |  28%
| One of the most helpful parts of any R help file is the See Also section. Read that
| section for list.files. Some of these functions may be used in later portions of this
| lesson.

...
  |========================                                                       |  31%
| Using the args() function on a function name is also a handy way to see what arguments
| a function can take.

...
  |==========================                                                     |  33%
| Use the args() function to determine the arguments to list.files().

> args(list.files())
NULL

| Keep trying! Or, type info() for more options.

| Type args(list.files) to see the arguments to list.files.

> args(list.file)
Error in args(list.file) : object 'list.file' not found
> args(list.files)
function (path = ".", pattern = NULL, all.files = FALSE, full.names = FALSE, 
    recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE, 
    no.. = FALSE) 
NULL

| You are quite good my friend!
  |============================                                                   |  36%
| Assign the value of the current working directory to a variable called "old.dir".

> old.dir<-list.files(path=".", patern=NULL, all.files= FALSE, full.names=FALSE, recursive=FALSE, ignore.case=FALSE, include.dirs=FALSE,no..=FALSE)
Error in list.files(path = ".", patern = NULL, all.files = FALSE, full.names = FALSE,  : 
  unused argument (patern = NULL)
> old.dir<-list.files(path=".", pattern=NULL, all.files= FALSE, full.names=FALSE, recursive=FALSE, ignore.case=FALSE, include.dirs=FALSE,no..=FALSE)

| Not quite right, but keep trying. Or, type info() for more options.

| Type old.dir <- getwd() to assign the value of the current working directory to a
| variable called "old.dir".

> old.dir<-getwd()

| Great job!
  |==============================                                                 |  38%
| We will use old.dir at the end of this lesson to move back to the place that we
| started. A lot of query functions like getwd() have the useful property that they
| return the answer to the question as a result of the function.

...
  |================================                                               |  41%
| Use dir.create() to create a directory in the current working directory called
| "testdir".

> dir.create("testdir")

| Nice work!
  |==================================                                             |  44%
| We will do all our work in this new directory and then delete it after we are done.
| This is the R analog to "Take only pictures, leave only footprints."

...
  |====================================                                           |  46%
| Set your working directory to "testdir" with the setwd() command.

> setwd("testdir")

| Excellent work!
  |======================================                                         |  49%
| In general, you will want your working directory to be someplace sensible, perhaps
| created for the specific project that you are working on. In fact, organizing your
| work in R packages using RStudio is an excellent option. Check out RStudio at
| http://www.rstudio.com/

...
  |=========================================                                      |  51%
| Create a file in your working directory called "mytest.R" using the file.create()
| function.

> file.create("mytest.R")
[1] TRUE

| That's the answer I was looking for.
  |===========================================                                    |  54%
| This should be the only file in this newly created directory. Let's check this by
| listing all the files in the current directory.

> list.files()
[1] "mytest.R"

| Your dedication is inspiring!
  |=============================================                                  |  56%
| Check to see if "mytest.R" exists in the working directory using the file.exists()
| function.

> file.exists("mytest.R")
[1] TRUE

| Perseverance, that's the answer.
  |===============================================                                |  59%
| These sorts of functions are excessive for interactive use. But, if you are running a
| program that loops through a series of files and does some processing on each one, you
| will want to check to see that each exists before you try to process it.

...
  |=================================================                              |  62%
| Access information about the file "mytest.R" by using file.info().

> file.info("mytest.R")
         size isdir mode               mtime               ctime               atime uid
mytest.R    0 FALSE  644 2019-03-13 04:01:22 2019-03-13 04:01:22 2019-03-13 04:02:47 501
         gid    uname grname
mytest.R  20 anwarsan  staff

| All that practice is paying off!
  |===================================================                            |  64%
| You can use the $ operator --- e.g., file.info("mytest.R")$mode --- to grab specific
| items.

...
  |=====================================================                          |  67%
| Change the name of the file "mytest.R" to "mytest2.R" by using file.rename().

> file.rename("mytest2.R)
+ 
+ .
+ "
+ #
+  file.rename("mytest2.R")
Error: unexpected symbol in:
"#
 file.rename"
>  file.rename("mytest2.R")
Error in file.rename("mytest2.R") : 
  argument "to" is missing, with no default
>  file.rename("mytest.R", "mytest2.R")
[1] TRUE

| You got it right!
  |=======================================================                        |  69%
| Your operating system will provide simpler tools for these sorts of tasks, but having
| the ability to manipulate files programatically is useful. You might now try to delete
| mytest.R using file.remove('mytest.R'), but that won't work since mytest.R no longer
| exists. You have already renamed it.

...
  |=========================================================                      |  72%
| Make a copy of "mytest2.R" called "mytest3.R" using file.copy().

> file.copy("mytest2.R", "mytest3.R")
[1] TRUE

| You got it!
  |===========================================================                    |  74%
| You now have two files in the current directory. That may not seem very interesting.
| But what if you were working with dozens, or millions, of individual files? In that
| case, being able to programatically act on many files would be absolutely necessary.
| Don't forget that you can, temporarily, leave the lesson by typing play() and then
| return by typing nxt().

...
  |=============================================================                  |  77%
| Provide the relative path to the file "mytest3.R" by using file.path().

> file.path("mytest3.R")
[1] "mytest3.R"

| That's correct!
  |===============================================================                |  79%
| You can use file.path to construct file and directory paths that are independent of
| the operating system your R code is running on. Pass 'folder1' and 'folder2' as
| arguments to file.path to make a platform-independent pathname.

> file.path('folder1', 'folder2')
[1] "folder1/folder2"

| You're the best!
  |=================================================================              |  82%
| Take a look at the documentation for dir.create by entering ?dir.create . Notice the
| 'recursive' argument. In order to create nested directories, 'recursive' must be set
| to TRUE.

> ?dir.create

| Excellent job!
  |===================================================================            |  85%
| Create a directory in the current working directory called "testdir2" and a
| subdirectory for it called "testdir3", all in one command by using dir.create() and
| file.path().

> dir.create("testdir2", "testdir3")

| Keep trying! Or, type info() for more options.

| dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE) will do the trick. If
| you forgot the recursive argument, the command may have appeared to work, but it
| didn't create the nested directory.

> dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE)

| Great job!
  |=====================================================================          |  87%
| Go back to your original working directory using setwd(). (Recall that we created the
| variable old.dir with the full path for the orginal working directory at the start of
| these questions.)

> setwd(old.dir)

| Keep up the great work!
  |=======================================================================        |  90%
| It is often helpful to save the settings that you had before you began an analysis and
| then go back to them at the end. This trick is often used within functions; you save,
| say, the par() settings that you started with, mess around a bunch, and then set them
| back to the original values at the end. This isn't the same as what we have done here,
| but it seems similar enough to mention.

...
  |=========================================================================      |  92%
| After you finish this lesson delete the 'testdir' directory that you just left (and
| everything in it)

...
  |===========================================================================    |  95%
| Take nothing but results. Leave nothing but assumptions. That sounds like 'Take
| nothing but pictures. Leave nothing but footprints.' But it makes no sense! Surely our
| readers can come up with a better motto . . .

...
  |=============================================================================  |  97%
| In this lesson, you learned how to examine your R workspace and work with the file
| system of your machine from within R. Thanks for playing!

...
  |===============================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: No
2: Yes

Selection: 2
What is your email address? manwarsan@gmail.com
What is your assignment token? GqqdrCZWUb8RpcMG
Grade submission succeeded!

| Keep up the great work!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: R
Enter an item from the menu, or 0 to exit
Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files     
 3: Sequences of Numbers       4: Vectors                 
 5: Missing Values             6: Subsetting Vectors      
 7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply       
11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times         
15: Base Graphics             

Selection: 3
  |                                                                               |   0%

| In this lesson, you'll learn how to create sequences of numbers in R.

...
  |===                                                                            |   4%
| The simplest way to create a sequence of numbers in R is by using the `:` operator.
| Type 1:20 to see how it works.

> 1:2
[1] 1 2

| That's not the answer I was looking for, but try again. Or, type info() for more
| options.

| Type 1:20 with no spaces. Make sure to use a regular colon and NOT a semi-colon.

> 1:2
[1] 1 2

| Not quite, but you're learning! Try again. Or, type info() for more options.

| Type 1:20 with no spaces. Make sure to use a regular colon and NOT a semi-colon.

> 1:20
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| Your dedication is inspiring!
  |=======                                                                        |   9%
| That gave us every integer between (and including) 1 and 20. We could also use it to
| create a sequence of real numbers. For example, try pi:10.

> pi:10
[1] 3.141593 4.141593 5.141593 6.141593 7.141593 8.141593 9.141593

| You nailed it! Good job!
  |==========                                                                     |  13%
| The result is a vector of real numbers starting with pi (3.142...) and increasing in
| increments of 1. The upper limit of 10 is never reached, since the next number in our
| sequence would be greater than 10.

...
  |==============                                                                 |  17%
| What happens if we do 15:1? Give it a try to find out.

> 15:1
 [1] 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1

| You are quite good my friend!
  |=================                                                              |  22%
| It counted backwards in increments of 1! It's unlikely we'd want this behavior, but
| nonetheless it's good to know how it could happen.

...
  |=====================                                                          |  26%
| Remember that if you have questions about a particular R function, you can access its
| documentation with a question mark followed by the function name: ?function_name_here.
| However, in the case of an operator like the colon used above, you must enclose the
| symbol in backticks like this: ?`:`. (NOTE: The backtick (`) key is generally located
| in the top left corner of a keyboard, above the Tab key. If you don't have a backtick
| key, you can use regular quotes.)

...
  |========================                                                       |  30%
| Pull up the documentation for `:` now.

> :
Error: unexpected ':' in ":"
> ?:
Error: unexpected ':' in "?:"
> ':'
[1] ":"

| Almost! Try again. Or, type info() for more options.

| In order to view the documentation for a symbol like the colon operator, you have to
| use backticks (or quotes). This is so R knows you are not attempting to use the symbol
| in the command. Here's what it looks like: ?`:`. Don't forget the question mark out
| front.

> ?':'

| All that practice is paying off!
  |===========================                                                    |  35%
| Often, we'll desire more control over a sequence we're creating than what the `:`
| operator gives us. The seq() function serves this purpose.

...
  |===============================                                                |  39%
| The most basic use of seq() does exactly the same thing as the `:` operator. Try
| seq(1, 20) to see this.

> seq(1,20)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| You got it!
  |==================================                                             |  43%
| This gives us the same output as 1:20. However, let's say that instead we want a
| vector of numbers ranging from 0 to 10, incremented by 0.5. seq(0, 10, by=0.5) does
| just that. Try it out.

> seq(0, 10, by=0.5)
 [1]  0.0  0.5  1.0  1.5  2.0  2.5  3.0  3.5  4.0  4.5  5.0  5.5  6.0  6.5  7.0  7.5  8.0
[18]  8.5  9.0  9.5 10.0

| You got it!
  |======================================                                         |  48%
| Or maybe we don't care what the increment is and we just want a sequence of 30 numbers
| between 5 and 10. seq(5, 10, length=30) does the trick. Give it a shot now and store
| the result in a new variable called my_seq.

> my_seq<-seq(5, 10, length=30)

| You're the best!
  |=========================================                                      |  52%
| To confirm that my_seq has length 30, we can use the length() function. Try it now.

> length(my_seq)
[1] 30

| Nice work!
  |=============================================                                  |  57%
| Let's pretend we don't know the length of my_seq, but we want to generate a sequence
| of integers from 1 to N, where N represents the length of the my_seq vector. In other
| words, we want a new vector (1, 2, 3, ...) that is the same length as my_seq.

...
  |================================================                               |  61%
| There are several ways we could do this. One possibility is to combine the `:`
| operator and the length() function like this: 1:length(my_seq). Give that a try.

> 1:length(my_seq)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
[29] 29 30

| You nailed it! Good job!
  |====================================================                           |  65%
| Another option is to use seq(along.with = my_seq). Give that a try.

> seq(along.with = my_seq)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
[29] 29 30

| Nice work!
  |=======================================================                        |  70%
| However, as is the case with many common tasks, R has a separate built-in function for
| this purpose called seq_along(). Type seq_along(my_seq) to see it in action.

> seq_along(my_seq)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28
[29] 29 30

| You are really on a roll!
  |==========================================================                     |  74%
| There are often several approaches to solving the same problem, particularly in R.
| Simple approaches that involve less typing are generally best. It's also important for
| your code to be readable, so that you and others can figure out what's going on
| without too much hassle.

...
  |==============================================================                 |  78%
| If R has a built-in function for a particular task, it's likely that function is
| highly optimized for that purpose and is your best option. As you become a more
| advanced R programmer, you'll design your own functions to perform tasks when there
| are no better options. We'll explore writing your own functions in future lessons.

...
  |=================================================================              |  83%
| One more function related to creating sequences of numbers is rep(), which stands for
| 'replicate'. Let's look at a few uses.

...
  |=====================================================================          |  87%
| If we're interested in creating a vector that contains 40 zeros, we can use rep(0,
| times = 40). Try it out.

> rep(0, times=40)
 [1] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

| Your dedication is inspiring!
  |========================================================================       |  91%
| If instead we want our vector to contain 10 repetitions of the vector (0, 1, 2), we
| can do rep(c(0, 1, 2), times = 10). Go ahead.

> rep(c(0, 1, 2), times = 10)
 [1] 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2

| That's correct!
  |============================================================================   |  96%
| Finally, let's say that rather than repeating the vector (0, 1, 2) over and over
| again, we want our vector to contain 10 zeros, then 10 ones, then 10 twos. We can do
| this with the `each` argument. Try rep(c(0, 1, 2), each = 10).

> rep(c(0, 1, 2), each = 10)
 [1] 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2

| You are quite good my friend!
  |===============================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? manwarsan@gmail.com
What is your assignment token? wTdahjb4I10ffvmx
Grade submission succeeded!

| That's the answer I was looking for.

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files     
 3: Sequences of Numbers       4: Vectors                 
 5: Missing Values             6: Subsetting Vectors      
 7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply       
11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times         
15: Base Graphics             

Selection: 4
  |                                                                               |   0%

| The simplest and most common data structure in R is the vector.

...
  |==                                                                             |   3%
| Vectors come in two different flavors: atomic vectors and lists. An atomic vector
| contains exactly one data type, whereas a list may contain multiple data types. We'll
| explore atomic vectors further before we get to lists.

...
  |====                                                                           |   5%
| In previous lessons, we dealt entirely with numeric vectors, which are one type of
| atomic vector. Other types of atomic vectors include logical, character, integer, and
| complex. In this lesson, we'll take a closer look at logical and character vectors.

...
  |======                                                                         |   8%
| Logical vectors can contain the values TRUE, FALSE, and NA (for 'not available').
| These values are generated as the result of logical 'conditions'. Let's experiment
| with some simple conditions.

...
  |========                                                                       |  11%
| First, create a numeric vector num_vect that contains the values 0.5, 55, -10, and 6.

> num_vect<-c(0.5,55,-10,6)

| Excellent work!
  |==========                                                                     |  13%
| Now, create a variable called tf that gets the result of num_vect < 1, which is read
| as 'num_vect is less than 1'.

> num_vect < 1
[1]  TRUE FALSE  TRUE FALSE

| Give it another try. Or, type info() for more options.

| Use tf <- num_vect < 1 to assign the result of num_vect < 1 to a variable called tf.

> tf<- num_vect < 1

| You got it!
  |============                                                                   |  16%
| What do you think tf will look like?

1: a vector of 4 logical values
2: a single logical value

Selection: 1

| Keep up the great work!
  |===============                                                                |  18%
| Print the contents of tf now.

> tf
[1]  TRUE FALSE  TRUE FALSE

| Your dedication is inspiring!
  |=================                                                              |  21%
| The statement num_vect < 1 is a condition and tf tells us whether each corresponding
| element of our numeric vector num_vect satisfies this condition.

...
  |===================                                                            |  24%
| The first element of num_vect is 0.5, which is less than 1 and therefore the statement
| 0.5 < 1 is TRUE. The second element of num_vect is 55, which is greater than 1, so the
| statement 55 < 1 is FALSE. The same logic applies for the third and fourth elements.

...
  |=====================                                                          |  26%
| Let's try another. Type num_vect >= 6 without assigning the result to a new variable.

> num_vect >= 6
[1] FALSE  TRUE FALSE  TRUE

| Nice work!
  |=======================                                                        |  29%
| This time, we are asking whether each individual element of num_vect is greater than
| OR equal to 6. Since only 55 and 6 are greater than or equal to 6, the second and
| fourth elements of the result are TRUE and the first and third elements are FALSE.

...
  |=========================                                                      |  32%
| The `<` and `>=` symbols in these examples are called 'logical operators'. Other
| logical operators include `>`, `<=`, `==` for exact equality, and `!=` for inequality.

...
  |===========================                                                    |  34%
| If we have two logical expressions, A and B, we can ask whether at least one is TRUE
| with A | B (logical 'or' a.k.a. 'union') or whether they are both TRUE with A & B
| (logical 'and' a.k.a. 'intersection'). Lastly, !A is the negation of A and is TRUE
| when A is FALSE and vice versa.

...
  |=============================                                                  |  37%
| It's a good idea to spend some time playing around with various combinations of these
| logical operators until you get comfortable with their use. We'll do a few examples
| here to get you started.

...
  |===============================                                                |  39%
| Try your best to predict the result of each of the following statements. You can use
| pencil and paper to work them out if it's helpful. If you get stuck, just guess and
| you've got a 50% chance of getting the right answer!

...
  |=================================                                              |  42%
| (3 > 5) & (4 == 4)

1: FALSE
2: TRUE

Selection: 1

| Nice work!
  |===================================                                            |  45%
| (TRUE == TRUE) | (TRUE == FALSE)

1: TRUE
2: FALSE

Selection: 1

| Keep working like that and you'll get there!
  |=====================================                                          |  47%
| ((111 >= 111) | !(TRUE)) & ((4 + 1) == 5)

1: FALSE
2: TRUE

Selection: 2

| That's correct!
  |========================================                                       |  50%
| Don't worry if you found these to be tricky. They're supposed to be. Working with
| logical statements in R takes practice, but your efforts will be rewarded in future
| lessons (e.g. subsetting and control structures).

...
  |==========================================                                     |  53%
| Character vectors are also very common in R. Double quotes are used to distinguish
| character objects, as in the following example.

...
  |============================================                                   |  55%
| Create a character vector that contains the following words: "My", "name", "is".
| Remember to enclose each word in its own set of double quotes, so that R knows they
| are character strings. Store the vector in a variable called my_char.

> my_char<-c("My", "name", "is")

| You are doing so well!
  |==============================================                                 |  58%
| Print the contents of my_char to see what it looks like.

> my_char
[1] "My"   "name" "is"  

| Excellent work!
  |================================================                               |  61%
| Right now, my_char is a character vector of length 3. Let's say we want to join the
| elements of my_char together into one continuous character string (i.e. a character
| vector of length 1). We can do this using the paste() function.

...
  |==================================================                             |  63%
| Type paste(my_char, collapse = " ") now. Make sure there's a space between the double
| quotes in the `collapse` argument. You'll see why in a second.

> paste(my_char, collapse = " ")
[1] "My name is"

| Keep up the great work!
  |====================================================                           |  66%
| The `collapse` argument to the paste() function tells R that when we join together the
| elements of the my_char character vector, we'd like to separate them with single
| spaces.

...
  |======================================================                         |  68%
| It seems that we're missing something.... Ah, yes! Your name!

...
  |========================================================                       |  71%
| To add (or 'concatenate') your name to the end of my_char, use the c() function like
| this: c(my_char, "your_name_here"). Place your name in double quotes where I've put
| "your_name_here". Try it now, storing the result in a new variable called my_name.

> my_name<-c(my_char, "anwar")

| Excellent job!
  |==========================================================                     |  74%
| Take a look at the contents of my_name.

> my_name
[1] "My"    "name"  "is"    "anwar"

| That's a job well done!
  |============================================================                   |  76%
| Now, use the paste() function once more to join the words in my_name together into a
| single character string. Don't forget to say collapse = " "!

> aste(my_name, collapse = " ")
Error in aste(my_name, collapse = " ") : could not find function "aste"
> paste(my_name, collapse = " ")
[1] "My name is anwar"

| Nice work!
  |==============================================================                 |  79%
| In this example, we used the paste() function to collapse the elements of a single
| character vector. paste() can also be used to join the elements of multiple character
| vectors.

...
  |================================================================               |  82%
| In the simplest case, we can join two character vectors that are each of length 1
| (i.e. join two words). Try paste("Hello", "world!", sep = " "), where the `sep`
| argument tells R that we want to separate the joined elements with a single space.

> 
> paste("Hello", "world!", sep = " ")
[1] "Hello world!"

| All that practice is paying off!
  |===================================================================            |  84%
| For a slightly more complicated example, we can join two vectors, each of length 3.
| Use paste() to join the integer vector 1:3 with the character vector c("X", "Y", "Z").
| This time, use sep = "" to leave no space between the joined elements.

> paste(1:3, c('X', 'Y', 'Z'), sep="")
[1] "1X" "2Y" "3Z"

| Great job!
  |=====================================================================          |  87%
| What do you think will happen if our vectors are of different length? (Hint: we talked
| about this in a previous lesson.)

...
  |=======================================================================        |  89%
| Vector recycling! Try paste(LETTERS, 1:4, sep = "-"), where LETTERS is a predefined
| variable in R containing a character vector of all 26 letters in the English alphabet.

> paste(LETTERS, 1:4, sep = "-")
 [1] "A-1" "B-2" "C-3" "D-4" "E-1" "F-2" "G-3" "H-4" "I-1" "J-2" "K-3" "L-4" "M-1" "N-2"
[15] "O-3" "P-4" "Q-1" "R-2" "S-3" "T-4" "U-1" "V-2" "W-3" "X-4" "Y-1" "Z-2"

| You are amazing!
  |=========================================================================      |  92%
| Since the character vector LETTERS is longer than the numeric vector 1:4, R simply
| recycles, or repeats, 1:4 until it matches the length of LETTERS.

...
  |===========================================================================    |  95%
| Also worth noting is that the numeric vector 1:4 gets 'coerced' into a character
| vector by the paste() function.

...
  |=============================================================================  |  97%
| We'll discuss coercion in another lesson, but all it really means is that the numbers
| 1, 2, 3, and 4 in the output above are no longer numbers to R, but rather characters
| "1", "2", "3", and "4".

...
  |===============================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: No
2: Yes

Selection: 2
What is your email address? manwarsan@gmail.com
What is your assignment token? g34SdvicAzsakVG1
Grade submission succeeded!

| You nailed it! Good job!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files     
 3: Sequences of Numbers       4: Vectors                 
 5: Missing Values             6: Subsetting Vectors      
 7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply       
11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times         
15: Base Graphics             

Selection: 5
  |                                                                               |   0%

| Missing values play an important role in statistics and data analysis. Often, missing
| values must not be ignored, but rather they should be carefully studied to see if
| there's an underlying pattern or cause for their missingness.

...
  |====                                                                           |   5%
| In R, NA is used to represent any value that is 'not available' or 'missing' (in the
| statistical sense). In this lesson, we'll explore missing values further.

...
  |========                                                                       |  10%
| Any operation involving NA generally yields NA as the result. To illustrate, let's
| create a vector c(44, NA, 5, NA) and assign it to a variable x.

> x<-c(44, NA, 5, NA)

| Your dedication is inspiring!
  |============                                                                   |  15%
| Now, let's multiply x by 3.

> x*3
[1] 132  NA  15  NA

| Keep working like that and you'll get there!
  |================                                                               |  20%
| Notice that the elements of the resulting vector that correspond with the NA values in
| x are also NA.

...
  |====================                                                           |  25%
| To make things a little more interesting, lets create a vector containing 1000 draws
| from a standard normal distribution with y <- rnorm(1000).

> y <- rnorm(1000)

| You're the best!
  |========================                                                       |  30%
| Next, let's create a vector containing 1000 NAs with z <- rep(NA, 1000).

> z <- rep(NA, 1000)

| You nailed it! Good job!
  |============================                                                   |  35%
| Finally, let's select 100 elements at random from these 2000 values (combining y and
| z) such that we don't know how many NAs we'll wind up with or what positions they'll
| occupy in our final vector -- my_data <- sample(c(y, z), 100).

> my_data <- sample(c(y, z), 100)

| Nice work!
  |================================                                               |  40%
| Let's first ask the question of where our NAs are located in our data. The is.na()
| function tells us whether each element of a vector is NA. Call is.na() on my_data and
| assign the result to my_na.

> my_na<-is.na(my_data)

| Nice work!
  |====================================                                           |  45%
| Now, print my_na to see what you came up with.

> my_na
  [1]  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE
 [15]  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE
 [29] FALSE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE  TRUE  TRUE
 [43] FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE
 [57] FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE
 [71]  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE
 [85]  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE
 [99] FALSE FALSE

| You are doing so well!
  |========================================                                       |  50%
| Everywhere you see a TRUE, you know the corresponding element of my_data is NA.
| Likewise, everywhere you see a FALSE, you know the corresponding element of my_data is
| one of our random draws from the standard normal distribution.

...
  |===========================================                                    |  55%
| In our previous discussion of logical operators, we introduced the `==` operator as a
| method of testing for equality between two objects. So, you might think the expression
| my_data == NA yields the same results as is.na(). Give it a try.

> my_data == NA
  [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
 [29] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
 [57] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
 [85] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA

| Great job!
  |===============================================                                |  60%
| The reason you got a vector of all NAs is that NA is not really a value, but just a
| placeholder for a quantity that is not available. Therefore the logical expression is
| incomplete and R has no choice but to return a vector of the same length as my_data
| that contains all NAs.

...
  |===================================================                            |  65%
| Don't worry if that's a little confusing. The key takeaway is to be cautious when
| using logical expressions anytime NAs might creep in, since a single NA value can
| derail the entire thing.

...
  |=======================================================                        |  70%
| So, back to the task at hand. Now that we have a vector, my_na, that has a TRUE for
| every NA and FALSE for every numeric value, we can compute the total number of NAs in
| our data.

...
  |===========================================================                    |  75%
| The trick is to recognize that underneath the surface, R represents TRUE as the number
| 1 and FALSE as the number 0. Therefore, if we take the sum of a bunch of TRUEs and
| FALSEs, we get the total number of TRUEs.

...
  |===============================================================                |  80%
| Let's give that a try here. Call the sum() function on my_na to count the total number
| of TRUEs in my_na, and thus the total number of NAs in my_data. Don't assign the
| result to a new variable.

> sum(my_na)
[1] 47

| You nailed it! Good job!
  |===================================================================            |  85%
| Pretty cool, huh? Finally, let's take a look at the data to convince ourselves that
| everything 'adds up'. Print my_data to the console.

> my_data
  [1]          NA  0.40125921  1.28984889          NA -0.50593364          NA          NA
  [8]          NA          NA          NA          NA  0.39921621          NA -0.64516061
 [15]          NA          NA          NA -1.77139295          NA          NA -0.28747889
 [22]          NA          NA          NA          NA  1.20065829 -0.55447143 -1.52925511
 [29]  0.45303395          NA -1.48524407          NA          NA -0.81828825 -1.78448835
 [36] -0.90533072  0.26322057          NA -0.64093030          NA          NA          NA
 [43]  1.40040591 -0.06876565 -0.32306719  0.91940335 -0.66784935 -0.70066742          NA
 [50]          NA          NA          NA          NA  2.32636175          NA -0.04881349
 [57]  1.09991960  0.16707256          NA -0.14372728 -0.32522760          NA -0.07992257
 [64] -0.37959736          NA          NA -2.91359916          NA  0.71219063 -0.59579701
 [71]          NA -0.15374133  0.52530968 -0.34198479 -1.11584967          NA  0.72512397
 [78] -0.50925754  1.11882505          NA  0.80449857 -0.01098790          NA -1.56333505
 [85]          NA          NA          NA  0.58218122          NA          NA  0.79803312
 [92]          NA          NA -0.66997275 -0.55693087  0.57919075 -1.66191176 -2.18544047
 [99] -0.91020688 -0.34607495

| That's the answer I was looking for.
  |=======================================================================        |  90%
| Now that we've got NAs down pat, let's look at a second type of missing value -- NaN,
| which stands for 'not a number'. To generate NaN, try dividing (using a forward slash)
| 0 by 0 now.

> 0/0
[1] NaN

| Perseverance, that's the answer.
  |===========================================================================    |  95%
| Let's do one more, just for fun. In R, Inf stands for infinity. What happens if you
| subtract Inf from Inf?

> I/I
Error in I/I : non-numeric argument to binary operator
> IL/IL
Error: object 'IL' not found
> Inf-Inf
[1] NaN

| You are really on a roll!
  |===============================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: No
2: Yes

Selection: 2
What is your email address? manwarsan@gmail.com
What is your assignment token? dsB1Vj9isLccAu64
Grade submission succeeded!

| Excellent work!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files     
 3: Sequences of Numbers       4: Vectors                 
 5: Missing Values             6: Subsetting Vectors      
 7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply       
11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times         
15: Base Graphics             

Selection: 6
  |                                                                               |   0%

| In this lesson, we'll see how to extract elements from a vector based on some
| conditions that we specify.

...
  |==                                                                             |   3%
| For example, we may only be interested in the first 20 elements of a vector, or only
| the elements that are not NA, or only those that are positive or correspond to a
| specific variable of interest. By the end of this lesson, you'll know how to handle
| each of these scenarios.

...
  |====                                                                           |   5%
| I've created for you a vector called x that contains a random ordering of 20 numbers
| (from a standard normal distribution) and 20 NAs. Type x now to see what it looks
| like.

> x
 [1] -0.8335914         NA         NA         NA         NA -1.7221711  0.5882206
 [8]         NA -2.0380416 -1.5869849 -0.3604519  0.2530293  0.5407037  0.2084589
[15]         NA         NA -1.3270173         NA         NA  0.4019633  1.1396671
[22] -0.2587022         NA  0.8104242         NA         NA -0.7513779         NA
[29]         NA         NA  0.8935554 -1.2307233 -1.3720702         NA         NA
[36]         NA         NA  1.5818662  0.1472472         NA

| You're the best!
  |======                                                                         |   8%
| The way you tell R that you want to select some particular elements (i.e. a 'subset')
| from a vector is by placing an 'index vector' in square brackets immediately following
| the name of the vector.

...
  |========                                                                       |  10%
| For a simple example, try x[1:10] to view the first ten elements of x.

> x[1:10]
 [1] -0.8335914         NA         NA         NA         NA -1.7221711  0.5882206
 [8]         NA -2.0380416 -1.5869849

| Keep working like that and you'll get there!
  |==========                                                                     |  13%
| Index vectors come in four different flavors -- logical vectors, vectors of positive
| integers, vectors of negative integers, and vectors of character strings -- each of
| which we'll cover in this lesson.

...
  |============                                                                   |  15%
| Let's start by indexing with logical vectors. One common scenario when working with
| real-world data is that we want to extract all elements of a vector that are not NA
| (i.e. missing data). Recall that is.na(x) yields a vector of logical values the same
| length as x, with TRUEs corresponding to NA values in x and FALSEs corresponding to
| non-NA values in x.

...
  |==============                                                                 |  18%
| What do you think x[is.na(x)] will give you?

1: A vector of all NAs
2: A vector of length 0
3: A vector with no NAs
4: A vector of TRUEs and FALSEs

Selection: 1

| Great job!
  |================                                                               |  21%
| Prove it to yourself by typing x[is.na(x)].

> x[is.na(x)]
 [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA

| You are really on a roll!
  |==================                                                             |  23%
| Recall that `!` gives us the negation of a logical expression, so !is.na(x) can be
| read as 'is not NA'. Therefore, if we want to create a vector called y that contains
| all of the non-NA values from x, we can use y <- x[!is.na(x)]. Give it a try.

> y <- x[!is.na(x)]

| You're the best!
  |====================                                                           |  26%
| Print y to the console.

> y
 [1] -0.8335914 -1.7221711  0.5882206 -2.0380416 -1.5869849 -0.3604519  0.2530293
 [8]  0.5407037  0.2084589 -1.3270173  0.4019633  1.1396671 -0.2587022  0.8104242
[15] -0.7513779  0.8935554 -1.2307233 -1.3720702  1.5818662  0.1472472

| All that practice is paying off!
  |======================                                                         |  28%
| Now that we've isolated the non-missing values of x and put them in y, we can subset y
| as we please.

...
  |========================                                                       |  31%
| Recall that the expression y > 0 will give us a vector of logical values the same
| length as y, with TRUEs corresponding to values of y that are greater than zero and
| FALSEs corresponding to values of y that are less than or equal to zero. What do you
| think y[y > 0] will give you?

1: A vector of all the positive elements of y
2: A vector of length 0
3: A vector of TRUEs and FALSEs
4: A vector of all the negative elements of y
5: A vector of all NAs

Selection: 1

| You are doing so well!
  |==========================                                                     |  33%
| Type y[y > 0] to see that we get all of the positive elements of y, which are also the
| positive elements of our original vector x.

> y[y > 0]
 [1] 0.5882206 0.2530293 0.5407037 0.2084589 0.4019633 1.1396671 0.8104242 0.8935554
 [9] 1.5818662 0.1472472

| All that hard work is paying off!
  |============================                                                   |  36%
| You might wonder why we didn't just start with x[x > 0] to isolate the positive
| elements of x. Try that now to see why.

> x[x > 0]
 [1]        NA        NA        NA        NA 0.5882206        NA 0.2530293 0.5407037
 [9] 0.2084589        NA        NA        NA        NA 0.4019633 1.1396671        NA
[17] 0.8104242        NA        NA        NA        NA        NA 0.8935554        NA
[25]        NA        NA        NA 1.5818662 0.1472472        NA

| Your dedication is inspiring!
  |==============================                                                 |  38%
| Since NA is not a value, but rather a placeholder for an unknown quantity, the
| expression NA > 0 evaluates to NA. Hence we get a bunch of NAs mixed in with our
| positive numbers when we do this.

...
  |================================                                               |  41%
| Combining our knowledge of logical operators with our new knowledge of subsetting, we
| could do this -- x[!is.na(x) & x > 0]. Try it out.

> x[!is.na(x) & x > 0]
 [1] 0.5882206 0.2530293 0.5407037 0.2084589 0.4019633 1.1396671 0.8104242 0.8935554
 [9] 1.5818662 0.1472472

| You are doing so well!
  |==================================                                             |  44%
| In this case, we request only values of x that are both non-missing AND greater than
| zero.

...
  |====================================                                           |  46%
| I've already shown you how to subset just the first ten values of x using x[1:10]. In
| this case, we're providing a vector of positive integers inside of the square
| brackets, which tells R to return only the elements of x numbered 1 through 10.

...
  |======================================                                         |  49%
| Many programming languages use what's called 'zero-based indexing', which means that
| the first element of a vector is considered element 0. R uses 'one-based indexing',
| which (you guessed it!) means the first element of a vector is considered element 1.

...
  |=========================================                                      |  51%
| Can you figure out how we'd subset the 3rd, 5th, and 7th elements of x? Hint -- Use
| the c() function to specify the element numbers as a numeric vector.

> c(3,5,7)
[1] 3 5 7

| That's not exactly what I'm looking for. Try again. Or, type info() for more options.

| Create a vector of indexes with c(3, 5, 7), then put that inside of the square
| brackets.

> c([3],[5],[7])
Error: unexpected '[' in "c(["
> c([3, 5, 7])
Error: unexpected '[' in "c(["
> info()

| When you are at the R prompt (>):
| -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl will ignore what you
| do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

> [c(3, 5, 7)]
Error: unexpected '[' in "["
> c([3][5][7])
Error: unexpected '[' in "c(["
> x[3, 5, 7]
Error in x[3, 5, 7] : incorrect number of dimensions
> x([3][5][7])
Error: unexpected '[' in "x(["
> x[c(3,5,7)]
[1]        NA        NA 0.5882206

| You are doing so well!
  |===========================================                                    |  54%
| It's important that when using integer vectors to subset our vector x, we stick with
| the set of indexes {1, 2, ..., 40} since x only has 40 elements. What happens if we
| ask for the zeroth element of x (i.e. x[0])? Give it a try.

> x (i.e. x[0])
Error: unexpected symbol in "x (i.e. x"
> x (x[0])
Error in x(x[0]) : could not find function "x"
> x (1 x[0])
Error: unexpected symbol in "x (1 x"
> x (1, x[0])
Error in x(1, x[0]) : could not find function "x"
> x[0]
numeric(0)

| You are really on a roll!
  |=============================================                                  |  56%
| As you might expect, we get nothing useful. Unfortunately, R doesn't prevent us from
| doing this. What if we ask for the 3000th element of x? Try it out.

> x[3000]
[1] NA

| You got it!
  |===============================================                                |  59%
| Again, nothing useful, but R doesn't prevent us from asking for it. This should be a
| cautionary tale. You should always make sure that what you are asking for is within
| the bounds of the vector you're working with.

...
  |=================================================                              |  62%
| What if we're interested in all elements of x EXCEPT the 2nd and 10th? It would be
| pretty tedious to construct a vector containing all numbers 1 through 40 EXCEPT 2 and
| 10.

...
  |===================================================                            |  64%
| Luckily, R accepts negative integer indexes. Whereas x[c(2, 10)] gives us ONLY the 2nd
| and 10th elements of x, x[c(-2, -10)] gives us all elements of x EXCEPT for the 2nd
| and 10 elements.  Try x[c(-2, -10)] now to see this.

> x[c(-2, -10)]
 [1] -0.8335914         NA         NA         NA -1.7221711  0.5882206         NA
 [8] -2.0380416 -0.3604519  0.2530293  0.5407037  0.2084589         NA         NA
[15] -1.3270173         NA         NA  0.4019633  1.1396671 -0.2587022         NA
[22]  0.8104242         NA         NA -0.7513779         NA         NA         NA
[29]  0.8935554 -1.2307233 -1.3720702         NA         NA         NA         NA
[36]  1.5818662  0.1472472         NA

| You're the best!
  |=====================================================                          |  67%
| A shorthand way of specifying multiple negative numbers is to put the negative sign
| out in front of the vector of positive numbers. Type x[-c(2, 10)] to get the exact
| same result.

> x[-c(2, 10)]
 [1] -0.8335914         NA         NA         NA -1.7221711  0.5882206         NA
 [8] -2.0380416 -0.3604519  0.2530293  0.5407037  0.2084589         NA         NA
[15] -1.3270173         NA         NA  0.4019633  1.1396671 -0.2587022         NA
[22]  0.8104242         NA         NA -0.7513779         NA         NA         NA
[29]  0.8935554 -1.2307233 -1.3720702         NA         NA         NA         NA
[36]  1.5818662  0.1472472         NA

| Keep working like that and you'll get there!
  |=======================================================                        |  69%
| So far, we've covered three types of index vectors -- logical, positive integer, and
| negative integer. The only remaining type requires us to introduce the concept of
| 'named' elements.

...
  |=========================================================                      |  72%
| Create a numeric vector with three named elements using vect <- c(foo = 11, bar = 2,
| norf = NA).

> c(foo = 11, bar = 2, norf=NA)
 foo  bar norf 
  11    2   NA 

| Nice try, but that's not exactly what I was hoping for. Try again. Or, type info() for
| more options.

| Create a named vector with vect <- c(foo = 11, bar = 2, norf = NA).

> vect<-c(foo = 11, bar = 2, norf=NA)

| You got it right!
  |===========================================================                    |  74%
| When we print vect to the console, you'll see that each element has a name. Try it
| out.

> vect
 foo  bar norf 
  11    2   NA 

| Keep working like that and you'll get there!
  |=============================================================                  |  77%
| We can also get the names of vect by passing vect as an argument to the names()
| function. Give that a try.

> names(vect)
[1] "foo"  "bar"  "norf"

| That's correct!
  |===============================================================                |  79%
| Alternatively, we can create an unnamed vector vect2 with c(11, 2, NA). Do that now.

> vect2<-c(11, 2, NA)

| You're the best!
  |=================================================================              |  82%
| Then, we can add the `names` attribute to vect2 after the fact with names(vect2) <-
| c("foo", "bar", "norf"). Go ahead.

> names(vect2) <-c("foo", "bar", "norf")

| That's a job well done!
  |===================================================================            |  85%
| Now, let's check that vect and vect2 are the same by passing them as arguments to the
| identical() function.

> identical(vect, vect2)
[1] TRUE

| You are really on a roll!
  |=====================================================================          |  87%
| Indeed, vect and vect2 are identical named vectors.

...
  |=======================================================================        |  90%
| Now, back to the matter of subsetting a vector by named elements. Which of the
| following commands do you think would give us the second element of vect?

1: vect[bar]
2: vect["2"]
3: vect["bar"]

Selection: 2

| That's not exactly what I'm looking for. Try again.

| If we want the element named "bar" (i.e. the second element of vect), which command
| would get us that?

1: vect[bar]
2: vect["2"]
3: vect["bar"]

Selection: 3

| Excellent job!
  |=========================================================================      |  92%
| Now, try it out.

> vect["bar"]
bar 
  2 

| Keep up the great work!
  |===========================================================================    |  95%
| Likewise, we can specify a vector of names with vect[c("foo", "bar")]. Try it out.

> vect[c("foo", "bar")]
foo bar 
 11   2 

| Perseverance, that's the answer.
  |=============================================================================  |  97%
| Now you know all four methods of subsetting data from vectors. Different approaches
| are best in different scenarios and when in doubt, try it out!

...
  |===============================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? manwarsan@gmail.com
What is your assignment token? MwK8occzoOok6Djw
Grade submission succeeded!

| That's correct!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files     
 3: Sequences of Numbers       4: Vectors                 
 5: Missing Values             6: Subsetting Vectors      
 7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply       
11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times         
15: Base Graphics             

Selection: 7
  |                                                                               |   0%

| In this lesson, we'll cover matrices and data frames. Both represent 'rectangular'
| data types, meaning that they are used to store tabular data, with rows and columns.

...
  |==                                                                             |   3%
| The main difference, as you'll see, is that matrices can only contain a single class
| of data, while data frames can consist of many different classes of data.

...
  |====                                                                           |   6%
| Let's create a vector containing the numbers 1 through 20 using the `:` operator.
| Store the result in a variable called my_vector.

> my_vector<-1:20

| All that hard work is paying off!
  |=======                                                                        |   8%
| View the contents of the vector you just created.

> my_vector
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| You are quite good my friend!
  |=========                                                                      |  11%
| The dim() function tells us the 'dimensions' of an object. What happens if we do
| dim(my_vector)? Give it a try.

> dim(my_vector)
NULL

| That's a job well done!
  |===========                                                                    |  14%
| Clearly, that's not very helpful! Since my_vector is a vector, it doesn't have a `dim`
| attribute (so it's just NULL), but we can find its length using the length() function.
| Try that now.

> length(my_vector) 
[1] 20

| You are amazing!
  |=============                                                                  |  17%
| Ah! That's what we wanted. But, what happens if we give my_vector a `dim` attribute?
| Let's give it a try. Type dim(my_vector) <- c(4, 5).

> dim(my_vector) <- c(4, 5)

| You nailed it! Good job!
  |===============                                                                |  19%
| It's okay if that last command seemed a little strange to you. It should! The dim()
| function allows you to get OR set the `dim` attribute for an R object. In this case,
| we assigned the value c(4, 5) to the `dim` attribute of my_vector.

...
  |==================                                                             |  22%
| Use dim(my_vector) to confirm that we've set the `dim` attribute correctly.

> dim(my_vector)
[1] 4 5

| Excellent work!
  |====================                                                           |  25%
| Another way to see this is by calling the attributes() function on my_vector. Try it
| now.

> attributes(my_vector)
$dim
[1] 4 5


| Perseverance, that's the answer.
  |======================                                                         |  28%
| Just like in math class, when dealing with a 2-dimensional object (think rectangular
| table), the first number is the number of rows and the second is the number of
| columns. Therefore, we just gave my_vector 4 rows and 5 columns.

...
  |========================                                                       |  31%
| But, wait! That doesn't sound like a vector any more. Well, it's not. Now it's a
| matrix. View the contents of my_vector now to see what it looks like.

> my_vector
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    5    9   13   17
[2,]    2    6   10   14   18
[3,]    3    7   11   15   19
[4,]    4    8   12   16   20

| Great job!
  |==========================                                                     |  33%
| Now, let's confirm it's actually a matrix by using the class() function. Type
| class(my_vector) to see what I mean.

> class(my_vector)
[1] "matrix"

| You are doing so well!
  |=============================                                                  |  36%
| Sure enough, my_vector is now a matrix. We should store it in a new variable that
| helps us remember what it is. Store the value of my_vector in a new variable called
| my_matrix.

> my_matrix<-my_vector

| You are amazing!
  |===============================                                                |  39%
| The example that we've used so far was meant to illustrate the point that a matrix is
| simply an atomic vector with a dimension attribute. A more direct method of creating
| the same matrix uses the matrix() function.

...
  |=================================                                              |  42%
| Bring up the help file for the matrix() function now using the `?` function.

> ?matrix()

| Almost! Try again. Or, type info() for more options.

| The command ?matrix will do the trick.

> ?matrix

| You got it!
  |===================================                                            |  44%
| Now, look at the documentation for the matrix function and see if you can figure out
| how to create a matrix containing the same numbers (1-20) and dimensions (4 rows, 5
| columns) by calling the matrix() function. Store the result in a variable called
| my_matrix2.

> my_matrix2<-matrix(1:20, nrow=4, ncol=5)

| Perseverance, that's the answer.
  |=====================================                                          |  47%
| Finally, let's confirm that my_matrix and my_matrix2 are actually identical. The
| identical() function will tell us if its first two arguments are the same. Try it out.

> identical(my_matrix, my_matrix2)
[1] TRUE

| You got it right!
  |========================================                                       |  50%
| Now, imagine that the numbers in our table represent some measurements from a clinical
| experiment, where each row represents one patient and each column represents one
| variable for which measurements were taken.

...
  |==========================================                                     |  53%
| We may want to label the rows, so that we know which numbers belong to each patient in
| the experiment. One way to do this is to add a column to the matrix, which contains
| the names of all four people.

...
  |============================================                                   |  56%
| Let's start by creating a character vector containing the names of our patients --
| Bill, Gina, Kelly, and Sean. Remember that double quotes tell R that something is a
| character string. Store the result in a variable called patients.

> patiens<-c("Bill", "Gina", "Kelly", "Sean")

| You almost had it, but not quite. Try again. Or, type info() for more options.

| Make sure to capitalize the first letter of each name and to store the result in a
| variable called patients. Also, don't get the order of the patients mixed up! That
| would be a disaster!

> patients<-c("Bill", "Gina", "Kelly", "Sean")

| That's the answer I was looking for.
  |==============================================                                 |  58%
| Now we'll use the cbind() function to 'combine columns'. Don't worry about storing the
| result in a new variable. Just call cbind() with two arguments -- the patients vector
| and my_matrix.

> cbind(patients, my_matrix)
     patients                       
[1,] "Bill"   "1" "5" "9"  "13" "17"
[2,] "Gina"   "2" "6" "10" "14" "18"
[3,] "Kelly"  "3" "7" "11" "15" "19"
[4,] "Sean"   "4" "8" "12" "16" "20"

| That's a job well done!
  |================================================                               |  61%
| Something is fishy about our result! It appears that combining the character vector
| with our matrix of numbers caused everything to be enclosed in double quotes. This
| means we're left with a matrix of character strings, which is no good.

...
  |==================================================                             |  64%
| If you remember back to the beginning of this lesson, I told you that matrices can
| only contain ONE class of data. Therefore, when we tried to combine a character vector
| with a numeric matrix, R was forced to 'coerce' the numbers to characters, hence the
| double quotes.

...
  |=====================================================                          |  67%
| This is called 'implicit coercion', because we didn't ask for it. It just happened.
| But why didn't R just convert the names of our patients to numbers? I'll let you
| ponder that question on your own.

...
  |=======================================================                        |  69%
| So, we're still left with the question of how to include the names of our patients in
| the table without destroying the integrity of our numeric data. Try the following --
| my_data <- data.frame(patients, my_matrix)

> my_data <- data.frame(patients, my_matrix)

| Excellent work!
  |=========================================================                      |  72%
| Now view the contents of my_data to see what we've come up with.

> my_data
  patients X1 X2 X3 X4 X5
1     Bill  1  5  9 13 17
2     Gina  2  6 10 14 18
3    Kelly  3  7 11 15 19
4     Sean  4  8 12 16 20

| That's the answer I was looking for.
  |===========================================================                    |  75%
| It looks like the data.frame() function allowed us to store our character vector of
| names right alongside our matrix of numbers. That's exactly what we were hoping for!

...
  |=============================================================                  |  78%
| Behind the scenes, the data.frame() function takes any number of arguments and returns
| a single object of class `data.frame` that is composed of the original objects.

...
  |================================================================               |  81%
| Let's confirm this by calling the class() function on our newly created data frame.

> class(my_data)
[1] "data.frame"

| You are quite good my friend!
  |==================================================================             |  83%
| It's also possible to assign names to the individual rows and columns of a data frame,
| which presents another possible way of determining which row of values in our table
| belongs to each patient.

...
  |====================================================================           |  86%
| However, since we've already solved that problem, let's solve a different problem by
| assigning names to the columns of our data frame so that we know what type of
| measurement each column represents.

...
  |======================================================================         |  89%
| Since we have six columns (including patient names), we'll need to first create a
| vector containing one element for each column. Create a character vector called cnames
| that contains the following values (in order) -- "patient", "age", "weight", "bp",
| "rating", "test".

> cnames<-c("patient", "age", "weight", "bp","rating", "test")

| You nailed it! Good job!
  |========================================================================       |  92%
| Now, use the colnames() function to set the `colnames` attribute for our data frame.
| This is similar to the way we used the dim() function earlier in this lesson.

> colnames(cnames)
NULL

| You're close...I can feel it! Try it again. Or, type info() for more options.

| Try colnames(my_data) <- cnames.

> colnames(my_data) <- cnames

| That's correct!
  |===========================================================================    |  94%
| Let's see if that got the job done. Print the contents of my_data.

> my_data
  patient age weight bp rating test
1    Bill   1      5  9     13   17
2    Gina   2      6 10     14   18
3   Kelly   3      7 11     15   19
4    Sean   4      8 12     16   20

| Great job!
  |=============================================================================  |  97%
| In this lesson, you learned the basics of working with two very important and common
| data structures -- matrices and data frames. There's much more to learn and we'll be
| covering more advanced topics, particularly with respect to data frames, in future
| lessons.

...
  |===============================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: No
2: Yes

Selection: 2
What is your email address? manwarsan@gmail.com
What is your assignment token? FFNIQIecVyLD6nR9
Grade submission succeeded!

| Nice work!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files     
 3: Sequences of Numbers       4: Vectors                 
 5: Missing Values             6: Subsetting Vectors      
 7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply       
11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times         
15: Base Graphics             

Selection: 8
  |                                                                               |   0%

| This lesson is meant to be a short introduction to logical operations in R.

...
  |==                                                                             |   2%
| There are two logical values in R, also called boolean values. They are TRUE and
| FALSE. In R you can construct logical expressions which will evaluate to either TRUE
| or FALSE.

...
  |===                                                                            |   4%
| Many of the questions in this lesson will involve evaluating logical expressions. It
| may be useful to open up a second R terminal where you can experiment with some of
| these expressions.

...
  |=====                                                                          |   6%
| Creating logical expressions requires logical operators. You're probably familiar with
| arithmetic operators like `+`, `-`, `*`, and `/`. The first logical operator we are
| going to discuss is the equality operator, represented by two equals signs `==`. Use
| the equality operator below to find out if TRUE is equal to TRUE.

> 
> TRUE==TRUE
[1] TRUE

| You are doing so well!
  |======                                                                         |   8%
| Just like arithmetic, logical expressions can be grouped by parenthesis so that the
| entire expression (TRUE == TRUE) == TRUE evaluates to TRUE.

...
  |========                                                                       |  10%
| To test out this property, try evaluating (FALSE == TRUE) == FALSE .

> (FALSE == TRUE) == FALSE
[1] TRUE

| You got it right!
  |=========                                                                      |  12%
| The equality operator can also be used to compare numbers. Use `==` to see if 6 is
| equal to 7.

> 6==7
[1] FALSE

| You are quite good my friend!
  |===========                                                                    |  13%
| The previous expression evaluates to FALSE because 6 is less than 7. Thankfully, there
| are inequality operators that allow us to test if a value is less than or greater than
| another value.

...
  |============                                                                   |  15%
| The less than operator `<` tests whether the number on the left side of the operator
| (called the left operand) is less than the number on the right side of the operator
| (called the right operand). Write an expression to test whether 6 is less than 7.

> 6<7
[1] TRUE

| You are quite good my friend!
  |==============                                                                 |  17%
| There is also a less-than-or-equal-to operator `<=` which tests whether the left
| operand is less than or equal to the right operand. Write an expression to test
| whether 10 is less than or equal to 10.

> 10<=10
[1] TRUE

| Your dedication is inspiring!
  |===============                                                                |  19%
| Keep in mind that there are the corresponding greater than `>` and
| greater-than-or-equal-to `>=` operators.

...
  |=================                                                              |  21%
| Which of the following evaluates to FALSE?

1: 0 > -36
2: 7 == 7
3: 6 < 8
4: 9 >= 10

Selection: 4

| You are doing so well!
  |==================                                                             |  23%
| Which of the following evaluates to TRUE?

1: 9 >= 10
2: 57 < 8
3: 7 == 9
4: -6 > -7

Selection: 4

| All that practice is paying off!
  |====================                                                           |  25%
| The next operator we will discuss is the 'not equals' operator represented by `!=`.
| Not equals tests whether two values are unequal, so TRUE != FALSE evaluates to TRUE.
| Like the equality operator, `!=` can also be used with numbers. Try writing an
| expression to see if 5 is not equal to 7.

> 5 != 7
[1] TRUE

| You are amazing!
  |=====================                                                          |  27%
| In order to negate boolean expressions you can use the NOT operator. An exclamation
| point `!` will cause !TRUE (say: not true) to evaluate to FALSE and !FALSE (say: not
| false) to evaluate to TRUE. Try using the NOT operator and the equals operator to find
| the opposite of whether 5 is equal to 7.

> 5 not = 7
Error: unexpected symbol in "5 not"
> 5=7
Error in 5 = 7 : invalid (do_set) left-hand side to assignment
> 5==7
[1] FALSE

| Nice try, but that's not exactly what I was hoping for. Try again. Or, type info() for
| more options.

| This expression may be a little tricky, so think about negating the expression 5 == 7
| (all you need is an exclamation point in front).

> 5!=7
[1] TRUE

| Not quite, but you're learning! Try again. Or, type info() for more options.

| This expression may be a little tricky, so think about negating the expression 5 == 7
| (all you need is an exclamation point in front).

> !(5==7)
[1] TRUE

| Great job!
  |=======================                                                        |  29%
| Let's take a moment to review. The equals operator `==` tests whether two boolean
| values or numbers are equal, the not equals operator `!=` tests whether two boolean
| values or numbers are unequal, and the NOT operator `!` negates logical expressions so
| that TRUE expressions become FALSE and FALSE expressions become TRUE.

...
  |========================                                                       |  31%
| Which of the following evaluates to FALSE?

1: 9 < 10
2: !(0 >= -1)
3: !FALSE
4: 7 != 8

Selection: 2

| Great job!
  |==========================                                                     |  33%
| What do you think the following expression will evaluate to?: (TRUE != FALSE) == !(6
| == 7)

1: Can there be objective truth when programming?
2: %>%
3: TRUE
4: FALSE

Selection: 3

| All that hard work is paying off!
  |===========================                                                    |  35%
| At some point you may need to examine relationships between multiple logical
| expressions. This is where the AND operator and the OR operator come in.

...
  |=============================                                                  |  37%
| Let's look at how the AND operator works. There are two AND operators in R, `&` and
| `&&`. Both operators work similarly, if the right and left operands of AND are both
| TRUE the entire expression is TRUE, otherwise it is FALSE. For example, TRUE & TRUE
| evaluates to TRUE. Try typing FALSE & FALSE to how it is evaluated.

> 
> FALSE & FALSE
[1] FALSE

| You are quite good my friend!
  |==============================                                                 |  38%
| You can use the `&` operator to evaluate AND across a vector. The `&&` version of AND
| only evaluates the first member of a vector. Let's test both for practice. Type the
| expression TRUE & c(TRUE, FALSE, FALSE).

> TRUE & c(TRUE, FALSE, FALSE)
[1]  TRUE FALSE FALSE

| Keep working like that and you'll get there!
  |================================                                               |  40%
| What happens in this case is that the left operand `TRUE` is recycled across every
| element in the vector of the right operand. This is the equivalent statement as
| c(TRUE, TRUE, TRUE) & c(TRUE, FALSE, FALSE).

...
  |=================================                                              |  42%
| Now we'll type the same expression except we'll use the `&&` operator. Type the
| expression TRUE && c(TRUE, FALSE, FALSE).

> TRUE && c(TRUE, FALSE, FALSE)
[1] TRUE

| All that hard work is paying off!
  |===================================                                            |  44%
| In this case, the left operand is only evaluated with the first member of the right
| operand (the vector). The rest of the elements in the vector aren't evaluated at all
| in this expression.

...
  |====================================                                           |  46%
| The OR operator follows a similar set of rules. The `|` version of OR evaluates OR
| across an entire vector, while the `||` version of OR only evaluates the first member
| of a vector.

...
  |======================================                                         |  48%
| An expression using the OR operator will evaluate to TRUE if the left operand or the
| right operand is TRUE. If both are TRUE, the expression will evaluate to TRUE, however
| if neither are TRUE, then the expression will be FALSE.

...
  |========================================                                       |  50%
| Let's test out the vectorized version of the OR operator. Type the expression TRUE |
| c(TRUE, FALSE, FALSE).

> TRUE | c(TRUE, FALSE, FALSE)
[1] TRUE TRUE TRUE

| Keep working like that and you'll get there!
  |=========================================                                      |  52%
| Now let's try out the non-vectorized version of the OR operator. Type the expression
| TRUE || c(TRUE, FALSE, FALSE).

> TRUE || c(TRUE, FALSE, FALSE)
[1] TRUE

| You are quite good my friend!
  |===========================================                                    |  54%
| Logical operators can be chained together just like arithmetic operators. The
| expressions: `6 != 10 && FALSE && 1 >= 2` or `TRUE || 5 < 9.3 || FALSE` are perfectly
| normal to see.

...
  |============================================                                   |  56%
| As you may recall, arithmetic has an order of operations and so do logical
| expressions. All AND operators are evaluated before OR operators. Let's look at an
| example of an ambiguous case. Type: 5 > 8 || 6 != 8 && 4 > 3.9

> 5 > 8 || 6 != 8 && 4 > 3.9
[1] TRUE

| All that hard work is paying off!
  |==============================================                                 |  58%
| Let's walk through the order of operations in the above case. First the left and right
| operands of the AND operator are evaluated. 6 is not equal 8, 4 is greater than 3.9,
| therefore both operands are TRUE so the resulting expression `TRUE && TRUE` evaluates
| to TRUE. Then the left operand of the OR operator is evaluated: 5 is not greater than
| 8 so the entire expression is reduced to FALSE || TRUE. Since the right operand of
| this expression is TRUE the entire expression evaluates to TRUE.

...
  |===============================================                                |  60%
| Which one of the following expressions evaluates to TRUE?

1: FALSE || TRUE && FALSE
2: 99.99 > 100 || 45 < 7.3 || 4 != 4.0
3: TRUE && 62 < 62 && 44 >= 44
4: TRUE && FALSE || 9 >= 4 && 3 < 6

Selection: 2

| Not quite right, but keep trying.

| Try to evaluate each expression in isolation and build up an answer.

1: FALSE || TRUE && FALSE
2: TRUE && FALSE || 9 >= 4 && 3 < 6
3: 99.99 > 100 || 45 < 7.3 || 4 != 4.0
4: TRUE && 62 < 62 && 44 >= 44

Selection: 1

| Not quite, but you're learning! Try again.

| Try to evaluate each expression in isolation and build up an answer.

1: TRUE && 62 < 62 && 44 >= 44
2: 99.99 > 100 || 45 < 7.3 || 4 != 4.0
3: TRUE && FALSE || 9 >= 4 && 3 < 6
4: FALSE || TRUE && FALSE

Selection: 3

| Keep up the great work!
  |=================================================                              |  62%
| Which one of the following expressions evaluates to FALSE?

1: FALSE || TRUE && 6 != 4 || 9 > 4
2: !(8 > 4) ||  5 == 5.0 && 7.8 >= 7.79
3: FALSE && 6 >= 6 || 7 >= 8 || 50 <= 49.5
4: 6 >= -9 && !(6 > 7) && !(!TRUE)

Selection: 2

| Not quite! Try again.

| Try to evaluate each expression in isolation and build up an answer.

1: FALSE && 6 >= 6 || 7 >= 8 || 50 <= 49.5
2: !(8 > 4) ||  5 == 5.0 && 7.8 >= 7.79
3: FALSE || TRUE && 6 != 4 || 9 > 4
4: 6 >= -9 && !(6 > 7) && !(!TRUE)

Selection: 4

| You almost had it, but not quite. Try again.

| Try to evaluate each expression in isolation and build up an answer.

1: FALSE && 6 >= 6 || 7 >= 8 || 50 <= 49.5
2: FALSE || TRUE && 6 != 4 || 9 > 4
3: 6 >= -9 && !(6 > 7) && !(!TRUE)
4: !(8 > 4) ||  5 == 5.0 && 7.8 >= 7.79

Selection: 1

| You are really on a roll!
  |==================================================                             |  63%
| Now that you're familiar with R's logical operators you can take advantage of a few
| functions that R provides for dealing with logical expressions.

...
  |====================================================                           |  65%
| The function isTRUE() takes one argument. If that argument evaluates to TRUE, the
| function will return TRUE. Otherwise, the function will return FALSE. Try using this
| function by typing: isTRUE(6 > 4)

> isTRUE(6 > 4)
[1] TRUE

| You are amazing!
  |=====================================================                          |  67%
| Which of the following evaluates to TRUE?

1: isTRUE(!TRUE)
2: isTRUE(NA)
3: !isTRUE(4 < 3)
4: !isTRUE(8 != 5)
5: isTRUE(3)

Selection: 4

| You almost had it, but not quite. Try again.

| isTRUE() will only return TRUE if the statement passed to it as an argument is TRUE.

1: isTRUE(NA)
2: isTRUE(3)
3: !isTRUE(4 < 3)
4: isTRUE(!TRUE)
5: !isTRUE(8 != 5)

Selection: 3

| You are really on a roll!
  |=======================================================                        |  69%
| The function identical() will return TRUE if the two R objects passed to it as
| arguments are identical. Try out the identical() function by typing:
| identical('twins', 'twins')

> identical('twins', 'twins')
[1] TRUE

| Excellent work!
  |========================================================                       |  71%
| Which of the following evaluates to TRUE?

1: identical(5 > 4, 3 < 3.1)
2: !identical(7, 7)
3: identical(4, 3.1)
4: identical('hello', 'Hello')

Selection: 1

| That's the answer I was looking for.
  |==========================================================                     |  73%
| You should also be aware of the xor() function, which takes two arguments. The xor()
| function stands for exclusive OR. If one argument evaluates to TRUE and one argument
| evaluates to FALSE, then this function will return TRUE, otherwise it will return
| FALSE. Try out the xor() function by typing: xor(5 == 6, !FALSE)

> xor(5 == 6, !FALSE)
[1] TRUE

| Great job!
  |===========================================================                    |  75%
| 5 == 6 evaluates to FALSE, !FALSE evaluates to TRUE, so xor(FALSE, TRUE) evaluates to
| TRUE. On the other hand if the first argument was changed to 5 == 5 and the second
| argument was unchanged then both arguments would have been TRUE, so xor(TRUE, TRUE)
| would have evaluated to FALSE.

...
  |=============================================================                  |  77%
| Which of the following evaluates to FALSE?

1: xor(!!TRUE, !!FALSE)
2: xor(identical(xor, 'xor'), 7 == 7.0)
3: xor(4 >= 9, 8 != 8.0)
4: xor(!isTRUE(TRUE), 6 > -1)

Selection: 2

| That's not the answer I was looking for, but try again.

| For xor() to evaluate to TRUE, one argument must be TRUE and one must be FALSE.

1: xor(!!TRUE, !!FALSE)
2: xor(!isTRUE(TRUE), 6 > -1)
3: xor(4 >= 9, 8 != 8.0)
4: xor(identical(xor, 'xor'), 7 == 7.0)

Selection: 3

| You are quite good my friend!
  |==============================================================                 |  79%
| For the next few questions, we're going to need to create a vector of integers called
| ints. Create this vector by typing: ints <- sample(10)

> ints <- sample(10)

| You're the best!
  |================================================================               |  81%
| Now simply display the contents of ints.

> ints
 [1]  5  3  9  4  6  2  8  1  7 10

| Nice work!
  |=================================================================              |  83%
| The vector `ints` is a random sampling of integers from 1 to 10 without replacement.
| Let's say we wanted to ask some logical questions about contents of ints. If we type
| ints > 5, we will get a logical vector corresponding to whether each element of ints
| is greater than 5. Try typing: ints > 5

> ints > 5
 [1] FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE  TRUE

| Your dedication is inspiring!
  |===================================================================            |  85%
| We can use the resulting logical vector to ask other questions about ints. The which()
| function takes a logical vector as an argument and returns the indices of the vector
| that are TRUE. For example which(c(TRUE, FALSE, TRUE)) would return the vector c(1,
| 3).

...
  |====================================================================           |  87%
| Use the which() function to find the indices of ints that are greater than 7.

> which(ints > 7)
[1]  3  7 10

| You are amazing!
  |======================================================================         |  88%
| Which of the following commands would produce the indices of the elements in ints that
| are less than or equal to 2?

1: ints < 2
2: which(ints < 2)
3: which(ints <= 2)
4: ints <= 2

Selection: 3

| Keep up the great work!
  |=======================================================================        |  90%
| Like the which() function, the functions any() and all() take logical vectors as their
| argument. The any() function will return TRUE if one or more of the elements in the
| logical vector is TRUE. The all() function will return TRUE if every element in the
| logical vector is TRUE.

...
  |=========================================================================      |  92%
| Use the any() function to see if any of the elements of ints are less than zero.

> any(ints < 0)
[1] FALSE

| You are really on a roll!
  |==========================================================================     |  94%
| Use the all() function to see if all of the elements of ints are greater than zero.

> all(ints>0)
[1] TRUE

| Nice work!
  |============================================================================   |  96%
| Which of the following evaluates to TRUE?

1: all(c(TRUE, FALSE, TRUE))
2: any(ints == 10)
3: all(ints == 10)
4: any(ints == 2.5)

Selection: 2

| Excellent work!
  |=============================================================================  |  98%
| That's all for this introduction to logic in R. If you really want to see what you can
| do with logic, check out the control flow lesson!

...
  |===============================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? manwarsan@gmail.com
What is your assignment token? LoL8xDHWsb0yNIMi
Grade submission succeeded!

| You are really on a roll!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!


Selection: 
Enter an item from the menu, or 0 to exit
Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files     
 3: Sequences of Numbers       4: Vectors                 
 5: Missing Values             6: Subsetting Vectors      
 7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply       
11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times         
15: Base Graphics             

Selection: 9
  |                                                                               |   0%

| Functions are one of the fundamental building blocks of the R language. They are small
| pieces of reusable code that can be treated like any other R object.

...
  |==                                                                             |   2%
| If you've worked through any other part of this course, you've probably used some
| functions already. Functions are usually characterized by the name of the function
| followed by parentheses.

...
  |===                                                                            |   4%
| Let's try using a few basic functions just for fun. The Sys.Date() function returns a
| string representing today's date. Type Sys.Date() below and see what happens.

> Sys.Date()
[1] "2019-03-14"

| You are amazing!
  |=====                                                                          |   6%
| Most functions in R return a value. Functions like Sys.Date() return a value based on
| your computer's environment, while other functions manipulate input data in order to
| compute a return value.

...
  |======                                                                         |   8%
| The mean() function takes a vector of numbers as input, and returns the average of all
| of the numbers in the input vector. Inputs to functions are often called arguments.
| Providing arguments to a function is also sometimes called passing arguments to that
| function. Arguments you want to pass to a function go inside the function's
| parentheses. Try passing the argument c(2, 4, 5) to the mean() function.

> mean(c(2, 4, 5))
[1] 3.666667

| That's correct!
  |========                                                                       |  10%
| Functions usually take arguments which are variables that the function operates on.
| For example, the mean() function takes a vector as an argument, like in the case of
| mean(c(2,6,8)). The mean() function then adds up all of the numbers in the vector and
| divides that sum by the length of the vector.

...
  |==========                                                                     |  12%
| In the following question you will be asked to modify a script that will appear as
| soon as you move on from this question. When you have finished modifying the script,
| save your changes to the script and type submit() and the script will be evaluated.
| There will be some comments in the script that opens up, so be sure to read them!

...
  |===========                                                                    |  14%
| The last R expression to be evaluated in a function will become the return value of
| that function. We want this function to take one argument, x, and return x without
| modifying it. Delete the pound sign so that x is returned without any modification.
| Make sure to save your script before you type submit().

> submit()

| Sourcing your script...


| You are amazing!
  |=============                                                                  |  16%
| Now that you've created your first function let's test it! Type: boring_function('My
| first function!'). If your function works, it should just return the string: 'My first
| function!'

> boring_function('My first function!')
[1] "My first function!"

| That's the answer I was looking for.
  |===============                                                                |  18%
| Congratulations on writing your first function. By writing functions, you can gain
| serious insight into how R works. As John Chambers, the creator of R once said:
| 
| To understand computations in R, two slogans are helpful: 1. Everything that exists is
| an object. 2. Everything that happens is a function call.

...
  |================                                                               |  20%
| If you want to see the source code for any function, just type the function name
| without any arguments or parentheses. Let's try this out with the function you just
| created. Type: boring_function to view its source code.

> boring_function
function(x) {
  x
}
<bytecode: 0x7fb0a2a406a0>

| All that practice is paying off!
  |==================                                                             |  22%
| Time to make a more useful function! We're going to replicate the functionality of the
| mean() function by creating a function called: my_mean(). Remember that to calculate
| the average of all of the numbers in a vector you find the sum of all the numbers in
| the vector, and then divide that sum by the number of numbers in the vector.

...
  |===================                                                            |  24%
| Make sure to save your script before you type submit().

> submit()

| Sourcing your script...


| You're close...I can feel it! Try it again.

| Use the sum() function to find the sum of all the numbers in the vector. Use the
| length() function to find the size of the vector.

> submit()

| Sourcing your script...


| That's a job well done!
  |=====================                                                          |  27%
| Now test out your my_mean() function by finding the mean of the vector c(4, 5, 10).

> my_mean(c(4, 5, 10))
[1] 6.333333

| You're the best!
  |=======================                                                        |  29%
| Next, let's try writing a function with default arguments. You can set default values
| for a function's arguments, and this can be useful if you think someone who uses your
| function will set a certain argument to the same value most of the time.

...
  |========================                                                       |  31%
| Make sure to save your script before you type submit().

> submit()

| Sourcing your script...


| Give it another try.

| Remember to set the appropriate default values!

> submit()

| Sourcing your script...


| You are doing so well!
  |==========================                                                     |  33%
| Let's do some testing of the remainder function. Run remainder(5) and see what
| happens.

> remainder(5)
[1] 1

| Great job!
  |===========================                                                    |  35%
| Let's take a moment to examine what just happened. You provided one argument to the
| function, and R matched that argument to 'num' since 'num' is the first argument. The
| default value for 'divisor' is 2, so the function used the default value you provided.

...
  |=============================                                                  |  37%
| Now let's test the remainder function by providing two arguments. Type: remainder(11,
| 5) and let's see what happens.

> remainder(11, 5)
[1] 1

| Excellent job!
  |===============================                                                |  39%
| Once again, the arguments have been matched appropriately.

...
  |================================                                               |  41%
| You can also explicitly specify arguments in a function. When you explicitly designate
| argument values by name, the ordering of the arguments becomes unimportant. You can
| try this out by typing: remainder(divisor = 11, num = 5).

> remainder(divisor = 11, num = 5)
[1] 5

| Perseverance, that's the answer.
  |==================================                                             |  43%
| As you can see, there is a significant difference between remainder(11, 5) and
| remainder(divisor = 11, num = 5)!

...
  |===================================                                            |  45%
| R can also partially match arguments. Try typing remainder(4, div = 2) to see this
| feature in action.

> remainder(4, div = 2)
[1] 0

| You are quite good my friend!
  |=====================================                                          |  47%
| A word of warning: in general you want to make your code as easy to understand as
| possible. Switching around the orders of arguments by specifying their names or only
| using partial argument names can be confusing, so use these features with caution!

...
  |=======================================                                        |  49%
| With all of this talk about arguments, you may be wondering if there is a way you can
| see a function's arguments (besides looking at the documentation). Thankfully, you can
| use the args() function! Type: args(remainder) to examine the arguments for the
| remainder function.

> args(remainder)
function (num, divisor = 2) 
NULL

| Excellent job!
  |========================================                                       |  51%
| You may not realize it but I just tricked you into doing something pretty interesting!
| args() is a function, remainder() is a function, yet remainder was an argument for
| args(). Yes it's true: you can pass functions as arguments! This is a very powerful
| concept. Let's write a script to see how it works.

...
  |==========================================                                     |  53%
| Make sure to save your script before you type submit().

> submit()

| Sourcing your script...


| Nice work!
  |============================================                                   |  55%
| Let's take your new evaluate() function for a spin! Use evaluate to find the standard
| deviation of the vector c(1.4, 3.6, 7.9, 8.8).

> evaluate(c(1.4, 3.6, 7.9, 8.8))
Error in func(dat) : could not find function "func"
> evaluate(func(c(1.4, 3.6, 7.9, 8.8))
+ )
Error in func(c(1.4, 3.6, 7.9, 8.8)) : could not find function "func"
> evaluate(sd, c(1.4, 3.6, 7.9, 8.8))
[1] 3.514138

| Perseverance, that's the answer.
  |=============================================                                  |  57%
| The idea of passing functions as arguments to other functions is an important and
| fundamental concept in programming.

...
  |===============================================                                |  59%
| You may be surprised to learn that you can pass a function as an argument without
| first defining the passed function. Functions that are not named are appropriately
| known as anonymous functions.

...
  |================================================                               |  61%
| Let's use the evaluate function to explore how anonymous functions work. For the first
| argument of the evaluate function we're going to write a tiny function that fits on
| one line. In the second argument we'll pass some data to the tiny anonymous function
| in the first argument.

...
  |==================================================                             |  63%
| Type the following command and then we'll discuss how it works:
| evaluate(function(x){x+1}, 6)

> evaluate(function(x){x+1}, 6)
[1] 7

| You're the best!
  |====================================================                           |  65%
| The first argument is a tiny anonymous function that takes one argument `x` and
| returns `x+1`. We passed the number 6 into this function so the entire expression
| evaluates to 7.

...
  |=====================================================                          |  67%
| Try using evaluate() along with an anonymous function to return the first element of
| the vector c(8, 4, 0). Your anonymous function should only take one argument which
| should be a variable `x`.

> evaluate(function(x){x[1], c(8, 4, 0)})
Error: unexpected ',' in "evaluate(function(x){x[1],"
> evaluate(function(x){x[1]}, c(8, 4, 0))
[1] 8

| That's a job well done!
  |=======================================================                        |  69%
| Now try using evaluate() along with an anonymous function to return the last element
| of the vector c(8, 4, 0). Your anonymous function should only take one argument which
| should be a variable `x`.

> evaluate(function(x){x[3]}, c(8, 4, 0))
[1] 0

| Try again. Getting it right on the first try is boring anyway! Or, type info() for
| more options.

| You may need to recall how to index vector elements. Remember that your anonymous
| function should only have one argument, and that argument should be named `x`. Using
| the length() function in your anonymous function may help you.

> evaluate(function(x){length(x[3])}, c(8, 4, 0))
[1] 1

| Keep trying! Or, type info() for more options.

| You may need to recall how to index vector elements. Remember that your anonymous
| function should only have one argument, and that argument should be named `x`. Using
| the length() function in your anonymous function may help you.

> evaluate(function(x){length(x(3)}, c(8, 4, 0))
Error: unexpected '}' in "evaluate(function(x){length(x(3)}"
> evaluate(function(x){length(x)}, c(8, 4, 0))
[1] 3

| Not quite! Try again. Or, type info() for more options.

| You may need to recall how to index vector elements. Remember that your anonymous
| function should only have one argument, and that argument should be named `x`. Using
| the length() function in your anonymous function may help you.

> evaluate(function(length(x){ x[3]}, c(8, 4, 0))
Error: unexpected '(' in "evaluate(function(length("
> evaluate(function(length(x)){ x[3]}, c(8, 4, 0))
Error: unexpected '(' in "evaluate(function(length("
> evaluate(function(x){x[3]}, c(8, 4, 0))
[1] 0

| Not quite! Try again. Or, type info() for more options.

| You may need to recall how to index vector elements. Remember that your anonymous
| function should only have one argument, and that argument should be named `x`. Using
| the length() function in your anonymous function may help you.

> info()

| When you are at the R prompt (>):
| -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl will ignore what you
| do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

> ?length
> evaluate(function(x){length(3)}, c(8, 4, 0))
[1] 1

| Try again. Getting it right on the first try is boring anyway! Or, type info() for
| more options.

| You may need to recall how to index vector elements. Remember that your anonymous
| function should only have one argument, and that argument should be named `x`. Using
| the length() function in your anonymous function may help you.

> evaluate(function(x){length(x)}, c(8, 4, 0))
[1] 3

| You almost had it, but not quite. Try again. Or, type info() for more options.

| You may need to recall how to index vector elements. Remember that your anonymous
| function should only have one argument, and that argument should be named `x`. Using
| the length() function in your anonymous function may help you.

> evaluate(function(x){length()}, c(8, 4, 0))
Error in length() : 0 arguments passed to 'length' which requires 1
> evaluate(function(x){length([x])}, c(8, 4, 0))
Error: unexpected '[' in "evaluate(function(x){length(["
> evaluate(function(x){length(0)}, c(8, 4, 0))
[1] 1

| Not exactly. Give it another go. Or, type info() for more options.

| You may need to recall how to index vector elements. Remember that your anonymous
| function should only have one argument, and that argument should be named `x`. Using
| the length() function in your anonymous function may help you.

> evaluate(function(x){x[length(x)]}, c(8, 4, 0))
[1] 0

| Keep up the great work!
  |========================================================                       |  71%
| For the rest of the course we're going to use the paste() function frequently. Type
| ?paste so we can take a look at the documentation for the paste function.

> ?paste

| That's a job well done!
  |==========================================================                     |  73%
| As you can see the first argument of paste() is `...` which is referred to as an
| ellipsis or simply dot-dot-dot. The ellipsis allows an indefinite number of arguments
| to be passed into a function. In the case of paste() any number of strings can be
| passed as arguments and paste() will return all of the strings combined into one
| string.

...
  |============================================================                   |  76%
| Just to see how paste() works, type paste("Programming", "is", "fun!")

> paste("Programming", "is", "fun!")
[1] "Programming is fun!"

| Excellent job!
  |=============================================================                  |  78%
| Time to write our own modified version of paste().

...
  |===============================================================                |  80%
| Make sure to save your script before you type submit().

> submit()

| Sourcing your script...


| Nice try, but that's not exactly what I was hoping for. Try again.

| Remember that arguments can come after ...

> submit()

| Sourcing your script...


| Not quite, but you're learning! Try again.

| Remember that arguments can come after ...

> submit()

| Sourcing your script...


| You're close...I can feel it! Try it again.

| Remember that arguments can come after ...

> submit()

| Sourcing your script...


| Not quite, but you're learning! Try again.

| Remember that arguments can come after ...

> submit()

| Sourcing your script...


| You got it!
  |================================================================               |  82%
| Now let's test out your telegram function. Use your new telegram function passing in
| whatever arguments you wish!

> telegram("Konnichiwa")
[1] "START Konnichiwa STOP"

| That's correct!
  |==================================================================             |  84%
| Make sure to save your script before you type submit().

> submit()

| Sourcing your script...


| Nice try, but that's not exactly what I was hoping for. Try again.

| Your function should have three sections: capture the ellipsis in a list(), unpack the
| arguments from the ellipsis and assign them to variables, then pass those variables to
| paste().

> submit()

| Sourcing your script...


| Almost! Try again.

| Your function should have three sections: capture the ellipsis in a list(), unpack the
| arguments from the ellipsis and assign them to variables, then pass those variables to
| paste().

> submit()

| Sourcing your script...


| That's the answer I was looking for.
  |====================================================================           |  86%
| Time to use your mad_libs function. Make sure to name the place, adjective, and noun
| arguments in order for your function to work.

> mad_libs("Jakarta","all" "illegal software")
Error: unexpected string constant in "mad_libs("Jakarta","all" "illegal software""
> mad_libs("Jakarta","all","illegal software")
[1] "News from  today where  students took to the streets in protest of the new  being installed on campus."

| You are really on a roll!
  |=====================================================================          |  88%
| We're coming to the end of this lesson, but there's still one more idea you should be
| made aware of.

...
  |=======================================================================        |  90%
| You're familiar with adding, subtracting, multiplying, and dividing numbers in R. To
| do this you use the +, -, *, and / symbols. These symbols are called binary operators
| because they take two inputs, an input from the left and an input from the right.

...
  |=========================================================================      |  92%
| In R you can define your own binary operators. In the next script I'll show you how.

...
  |==========================================================================     |  94%
| Make sure to save your script before you type submit().

> submit()

| Sourcing your script...


| Not quite! Try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...


| You almost had it, but not quite. Try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...


| One more time. You can do it!

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...


| You're close...I can feel it! Try it again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...


| Almost! Try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...

Error in source(e$script_temp_path, encoding = "UTF-8") : 
  /var/folders/z2/fsr3hf6j6cn61s87b2hj3xxr0000gn/T//Rtmp0L9dkK/bin_op.R:27:11: unexpected string constant
26: "%p%" <- function(left, right){ # Remember to add arguments!
27:  "left + ""+right"
              ^

| That's not exactly what I'm looking for. Try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...


| You're close...I can feel it! Try it again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...

Error in source(e$script_temp_path, encoding = "UTF-8") : 
  /var/folders/z2/fsr3hf6j6cn61s87b2hj3xxr0000gn/T//Rtmp0L9dkK/bin_op.R:26:19: unexpected string constant
25: 
26: "%p%" <- function("left"
                      ^

| Nice try, but that's not exactly what I was hoping for. Try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...


| That's not exactly what I'm looking for. Try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...


| That's not the answer I was looking for, but try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...


| Not quite, but you're learning! Try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...


| That's not the answer I was looking for, but try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...


| That's not the answer I was looking for, but try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...


| Not quite right, but keep trying.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...


| Nice try, but that's not exactly what I was hoping for. Try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...


| Not exactly. Give it another go.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...


| Not quite, but you're learning! Try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...

Error in source(e$script_temp_path, encoding = "UTF-8") : 
  /var/folders/z2/fsr3hf6j6cn61s87b2hj3xxr0000gn/T//Rtmp0L9dkK/bin_op.R:27:17: unexpected symbol
26: "%p%" <- function(left, right){ # Remember to add arguments!
27:          left/t right
                    ^

| One more time. You can do it!

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...

Error in source(e$script_temp_path, encoding = "UTF-8") : 
  /var/folders/z2/fsr3hf6j6cn61s87b2hj3xxr0000gn/T//Rtmp0L9dkK/bin_op.R:27:15: unexpected '/'
26: "%p%" <- function(left, right){ # Remember to add arguments!
27:          left+/
                  ^

| Give it another try.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...

Error in source(e$script_temp_path, encoding = "UTF-8") : 
  /var/folders/z2/fsr3hf6j6cn61s87b2hj3xxr0000gn/T//Rtmp0L9dkK/bin_op.R:27:14: unexpected string constant
26: "%p%" <- function(left, right){ # Remember to add arguments!
27:          left"+"
                 ^

| Nice try, but that's not exactly what I was hoping for. Try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...

Error in source(e$script_temp_path, encoding = "UTF-8") : 
  /var/folders/z2/fsr3hf6j6cn61s87b2hj3xxr0000gn/T//Rtmp0L9dkK/bin_op.R:27:10: unexpected SPECIAL
26: "%p%" <- function(left, right){ # Remember to add arguments!
27:          %left+right%
             ^

| You're close...I can feel it! Try it again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...

Error in source(e$script_temp_path, encoding = "UTF-8") : 
  /var/folders/z2/fsr3hf6j6cn61s87b2hj3xxr0000gn/T//Rtmp0L9dkK/bin_op.R:27:10: unexpected SPECIAL
26: "%p%" <- function(left, right){ # Remember to add arguments!
27:          %left%
             ^

| Not quite! Try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...

Error in source(e$script_temp_path, encoding = "UTF-8") : 
  /var/folders/z2/fsr3hf6j6cn61s87b2hj3xxr0000gn/T//Rtmp0L9dkK/bin_op.R:27:10: unexpected SPECIAL
26: "%p%" <- function(left, right){ # Remember to add arguments!
27:          %left +%
             ^

| That's not exactly what I'm looking for. Try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...

Error in source(e$script_temp_path, encoding = "UTF-8") : 
  /var/folders/z2/fsr3hf6j6cn61s87b2hj3xxr0000gn/T//Rtmp0L9dkK/bin_op.R:27:16: unexpected SPECIAL
26: "%p%" <- function(left, right){ # Remember to add arguments!
27:          left +% %
                   ^

| One more time. You can do it!

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...

Error in source(e$script_temp_path, encoding = "UTF-8") : 
  /var/folders/z2/fsr3hf6j6cn61s87b2hj3xxr0000gn/T//Rtmp0L9dkK/bin_op.R:27:16: unexpected SPECIAL
26: "%p%" <- function(left, right){ # Remember to add arguments!
27:          left +%%
                   ^

| You almost had it, but not quite. Try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...

Error in source(e$script_temp_path, encoding = "UTF-8") : 
  /var/folders/z2/fsr3hf6j6cn61s87b2hj3xxr0000gn/T//Rtmp0L9dkK/bin_op.R:27:16: unexpected SPECIAL
26: "%p%" <- function(left, right){ # Remember to add arguments!
27:          left +%%
                   ^

| Almost! Try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...


| That's not exactly what I'm looking for. Try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...

Error in source(e$script_temp_path, encoding = "UTF-8") : 
  /var/folders/z2/fsr3hf6j6cn61s87b2hj3xxr0000gn/T//Rtmp0L9dkK/bin_op.R:27:10: unexpected SPECIAL
26: "%p%" <- function(left, right){ # Remember to add arguments!
27:          %left +%
             ^

| Almost! Try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> sybmit()
Error in sybmit() : could not find function "sybmit"
> submit()

| Sourcing your script...


| You're close...I can feel it! Try it again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> ?%%
Error: unexpected SPECIAL in "?%%"
> ?%
Error: unexpected input in "?%"
> submit()

| Sourcing your script...

Error in source(e$script_temp_path, encoding = "UTF-8") : 
  /var/folders/z2/fsr3hf6j6cn61s87b2hj3xxr0000gn/T//Rtmp0L9dkK/bin_op.R:27:16: unexpected SPECIAL
26: "%p%" <- function(left, right){ # Remember to add arguments!
27:          left +%p%
                   ^

| Nice try, but that's not exactly what I was hoping for. Try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...


| One more time. You can do it!

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...


| Not exactly. Give it another go.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...

Error in source(e$script_temp_path, encoding = "UTF-8") : 
  /var/folders/z2/fsr3hf6j6cn61s87b2hj3xxr0000gn/T//Rtmp0L9dkK/bin_op.R:27:16: unexpected SPECIAL
26: "%p%" <- function(left, right){ # Remember to add arguments!
27:          left +%\t%
                   ^

| One more time. You can do it!

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> submit()

| Sourcing your script...


| You are really on a roll!
  |============================================================================   |  96%
| You made your own binary operator! Let's test it out. Paste together the strings: 'I',
| 'love', 'R!' using your new binary operator.

> 'I'%p% 'love' %p% 'R!'
[1] "I love R!"

| You're the best!
  |=============================================================================  |  98%
| We've come to the end of our lesson! Go out there and write some great functions!

...
  |===============================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? manwarsan@gmail.com
What is your assignment token? AP8MrlYOJkS7oBgv
Grade submission succeeded!

| You nailed it! Good job!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files     
 3: Sequences of Numbers       4: Vectors                 
 5: Missing Values             6: Subsetting Vectors      
 7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply       
11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times         
15: Base Graphics             

Selection: 14
  |                                                                               |   0%

| R has a special way of representing dates and times, which can be helpful if you're
| working with data that show how something changes over time (i.e. time-series data) or
| if your data contain some other temporal information, like dates of birth.

...
  |==                                                                             |   3%
| Dates are represented by the 'Date' class and times are represented by the 'POSIXct'
| and 'POSIXlt' classes. Internally, dates are stored as the number of days since
| 1970-01-01 and times are stored as either the number of seconds since 1970-01-01 (for
| 'POSIXct') or a list of seconds, minutes, hours, etc. (for 'POSIXlt').

...
  |====                                                                           |   6%
| Let's start by using d1 <- Sys.Date() to get the current date and store it in the
| variable d1. (That's the letter 'd' and the number 1.)

> d1 <- Sys.Date()

| You are doing so well!
  |=======                                                                        |   8%
| Use the class() function to confirm d1 is a Date object.

> class(d1)
[1] "Date"

| Perseverance, that's the answer.
  |=========                                                                      |  11%
| We can use the unclass() function to see what d1 looks like internally. Try it out.

> unclass(d1)
[1] 17969

| You're the best!
  |===========                                                                    |  14%
| That's the exact number of days since 1970-01-01!

...
  |=============                                                                  |  17%
| However, if you print d1 to the console, you'll get today's date -- YEAR-MONTH-DAY.
| Give it a try.

> d1
[1] "2019-03-14"

| Excellent job!
  |===============                                                                |  19%
| What if we need to reference a date prior to 1970-01-01? Create a variable d2
| containing as.Date("1969-01-01").

> d2<- as.Date("1969-01-01")

| You're the best!
  |==================                                                             |  22%
| Now use unclass() again to see what d2 looks like internally.

> unclass(d2)
[1] -365

| Keep working like that and you'll get there!
  |====================                                                           |  25%
| As you may have anticipated, you get a negative number. In this case, it's -365, since
| 1969-01-01 is exactly one calendar year (i.e. 365 days) BEFORE 1970-01-01.

...
  |======================                                                         |  28%
| Now, let's take a look at how R stores times. You can access the current date and time
| using the Sys.time() function with no arguments. Do this and store the result in a
| variable called t1.

> t1<-Sys.time()

| Excellent work!
  |========================                                                       |  31%
| View the contents of t1.

> t1
[1] "2019-03-14 15:40:32 WIB"

| Excellent job!
  |==========================                                                     |  33%
| And check the class() of t1.

> class(t1)
[1] "POSIXct" "POSIXt" 

| That's correct!
  |=============================                                                  |  36%
| As mentioned earlier, POSIXct is just one of two ways that R represents time
| information. (You can ignore the second value above, POSIXt, which just functions as a
| common language between POSIXct and POSIXlt.) Use unclass() to see what t1 looks like
| internally -- the (large) number of seconds since the beginning of 1970.

> unclass(t1)
[1] 1552552832

| You are really on a roll!
  |===============================                                                |  39%
| By default, Sys.time() returns an object of class POSIXct, but we can coerce the
| result to POSIXlt with as.POSIXlt(Sys.time()). Give it a try and store the result in
| t2.

> t2<-as.POSIXlt(Sys.time())

| You are quite good my friend!
  |=================================                                              |  42%
| Check the class of t2.

> class(t2)
[1] "POSIXlt" "POSIXt" 

| All that hard work is paying off!
  |===================================                                            |  44%
| Now view its contents.

> t2
[1] "2019-03-14 15:41:37 WIB"

| Perseverance, that's the answer.
  |=====================================                                          |  47%
| The printed format of t2 is identical to that of t1. Now unclass() t2 to see how it is
| different internally.

> unclass(t2)
$sec
[1] 37.15786

$min
[1] 41

$hour
[1] 15

$mday
[1] 14

$mon
[1] 2

$year
[1] 119

$wday
[1] 4

$yday
[1] 72

$isdst
[1] 0

$zone
[1] "WIB"

$gmtoff
[1] 25200

attr(,"tzone")
[1] ""    "WIB" "   "

| Keep up the great work!
  |========================================                                       |  50%
| t2, like all POSIXlt objects, is just a list of values that make up the date and time.
| Use str(unclass(t2)) to have a more compact view.

> str(unclass(t2))
List of 11
 $ sec   : num 37.2
 $ min   : int 41
 $ hour  : int 15
 $ mday  : int 14
 $ mon   : int 2
 $ year  : int 119
 $ wday  : int 4
 $ yday  : int 72
 $ isdst : int 0
 $ zone  : chr "WIB"
 $ gmtoff: int 25200
 - attr(*, "tzone")= chr [1:3] "" "WIB" "   "

| You nailed it! Good job!
  |==========================================                                     |  53%
| If, for example, we want just the minutes from the time stored in t2, we can access
| them with t2$min. Give it a try.

> t2$min
[1] 41

| All that practice is paying off!
  |============================================                                   |  56%
| Now that we have explored all three types of date and time objects, let's look at a
| few functions that extract useful information from any of these objects -- weekdays(),
| months(), and quarters().

...
  |==============================================                                 |  58%
| The weekdays() function will return the day of week from any date or time object. Try
| it out on d1, which is the Date object that contains today's date.

> weekdays(d1)
[1] "Thursday"

| That's correct!
  |================================================                               |  61%
| The months() function also works on any date or time object. Try it on t1, which is
| the POSIXct object that contains the current time (well, it was the current time when
| you created it).

> months(t1)
[1] "March"

| All that practice is paying off!
  |==================================================                             |  64%
| The quarters() function returns the quarter of the year (Q1-Q4) from any date or time
| object. Try it on t2, which is the POSIXlt object that contains the time at which you
| created it.

> quarters(t2)
[1] "Q1"

| Your dedication is inspiring!
  |=====================================================                          |  67%
| Often, the dates and times in a dataset will be in a format that R does not recognize.
| The strptime() function can be helpful in this situation.

...
  |=======================================================                        |  69%
| strptime() converts character vectors to POSIXlt. In that sense, it is similar to
| as.POSIXlt(), except that the input doesn't have to be in a particular format
| (YYYY-MM-DD).

...
  |=========================================================                      |  72%
| To see how it works, store the following character string in a variable called t3:
| "October 17, 1986 08:24" (with the quotes).

> t3<-"October 17, 1986 08:24"

| Excellent work!
  |===========================================================                    |  75%
| Now, use strptime(t3, "%B %d, %Y %H:%M") to help R convert our date/time object to a
| format that it understands. Assign the result to a new variable called t4. (You should
| pull up the documentation for strptime() if you'd like to know more about how it
| works.)

> strptime(t3, "%B %d, %Y %H:%M")
[1] "1986-10-17 08:24:00 WIB"

| Not quite right, but keep trying. Or, type info() for more options.

| t4 <- strptime(t3, "%B %d, %Y %H:%M") will convert our date/time object to a format
| that R understands.

> t4 <- strptime(t3, "%B %d, %Y %H:%M")

| You are really on a roll!
  |=============================================================                  |  78%
| Print the contents of t4.

> t4
[1] "1986-10-17 08:24:00 WIB"

| You got it!
  |================================================================               |  81%
| That's the format we've come to expect. Now, let's check its class().

> class(t4)
[1] "POSIXlt" "POSIXt" 

| Great job!
  |==================================================================             |  83%
| Finally, there are a number of operations that you can perform on dates and times,
| including arithmetic operations (+ and -) and comparisons (<, ==, etc.)

...
  |====================================================================           |  86%
| The variable t1 contains the time at which you created it (recall you used
| Sys.time()). Confirm that some time has passed since you created t1 by using the
| 'greater than' operator to compare it to the current time: Sys.time() > t1

> Sys.time() > t1
[1] TRUE

| You are really on a roll!
  |======================================================================         |  89%
| So we know that some time has passed, but how much? Try subtracting t1 from the
| current time using Sys.time() - t1. Don't forget the parentheses at the end of
| Sys.time(), since it is a function.

> Sys.time() - t1
Time difference of 7.616943 mins

| That's correct!
  |========================================================================       |  92%
| The same line of thinking applies to addition and the other comparison operators. If
| you want more control over the units when finding the above difference in times, you
| can use difftime(), which allows you to specify a 'units' parameter.

...
  |===========================================================================    |  94%
| Use difftime(Sys.time(), t1, units = 'days') to find the amount of time in DAYS that
| has passed since you created t1.

> difftime(Sys.time(), t1, units = 'days')
Time difference of 0.005603346 days

| You are doing so well!
  |=============================================================================  |  97%
| In this lesson, you learned how to work with dates and times in R. While it is
| important to understand the basics, if you find yourself working with dates and times
| often, you may want to check out the lubridate package by Hadley Wickham.

...
  |===============================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: No
2: Yes

Selection: 2
What is your email address? manwarsan@gmail.com
What is your assignment token? fWptjmXr5G5Uk5Ps
Grade submission succeeded!

| Perseverance, that's the answer.

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 
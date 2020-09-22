
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

> install.packages("swirl")
--- Please select a CRAN mirror for use in this session ---
trying URL 'https://repo.bppt.go.id/cran/bin/macosx/el-capitan/contrib/3.5/swirl_2.4.3.tgz'
Content type 'application/x-gzip' length 345675 bytes (337 KB)
==================================================
downloaded 337 KB

tar: Failed to set default locale

The downloaded binary packages are in
	/var/folders/z2/fsr3hf6j6cn61s87b2hj3xxr0000gn/T//RtmpDsOTsM/downloaded_packages
> packageVersion("swirl")
[1] '2.4.3'
> library(swirl)

| Hi! Type swirl() when you are ready to begin.

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

...

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

Selection: 10
  |                                                                               |   0%

| In this lesson, you'll learn how to use lapply() and sapply(), the two most important
| members of R's *apply family of functions, also known as loop functions.

...
  |==                                                                             |   2%
| These powerful functions, along with their close relatives (vapply() and tapply(),
| among others) offer a concise and convenient means of implementing the
| Split-Apply-Combine strategy for data analysis.

...
  |===                                                                            |   4%
| Each of the *apply functions will SPLIT up some data into smaller pieces, APPLY a
| function to each piece, then COMBINE the results. A more detailed discussion of this
| strategy is found in Hadley Wickham's Journal of Statistical Software paper titled
| 'The Split-Apply-Combine Strategy for Data Analysis'.

...
  |=====                                                                          |   6%
| Throughout this lesson, we'll use the Flags dataset from the UCI Machine Learning
| Repository. This dataset contains details of various nations and their flags. More
| information may be found here: http://archive.ics.uci.edu/ml/datasets/Flags

...
  |======                                                                         |   8%
| Let's jump right in so you can get a feel for how these special functions work!

...
  |========                                                                       |  10%
| I've stored the dataset in a variable called flags. Type head(flags) to preview the
| first six lines (i.e. the 'head') of the dataset.

> head(flags)
            name landmass zone area population language religion bars stripes colours
1    Afghanistan        5    1  648         16       10        2    0       3       5
2        Albania        3    1   29          3        6        6    0       0       3
3        Algeria        4    1 2388         20        8        2    2       0       3
4 American-Samoa        6    3    0          0        1        1    0       0       5
5        Andorra        3    1    0          0        6        0    3       0       3
6         Angola        4    2 1247          7       10        5    0       2       3
  red green blue gold white black orange mainhue circles crosses saltires quarters
1   1     1    0    1     1     1      0   green       0       0        0        0
2   1     0    0    1     0     1      0     red       0       0        0        0
3   1     1    0    0     1     0      0   green       0       0        0        0
4   1     0    1    1     1     0      1    blue       0       0        0        0
5   1     0    1    1     0     0      0    gold       0       0        0        0
6   1     0    0    1     0     1      0     red       0       0        0        0
  sunstars crescent triangle icon animate text topleft botright
1        1        0        0    1       0    0   black    green
2        1        0        0    0       1    0     red      red
3        1        1        0    0       0    0   green    white
4        0        0        1    1       1    0    blue      red
5        0        0        0    0       0    0    blue      red
6        1        0        0    1       0    0     red    black

| All that hard work is paying off!
  |=========                                                                      |  12%
| You may need to scroll up to see all of the output. Now, let's check out the
| dimensions of the dataset using dim(flags).

> dim(flags)
[1] 194  30

| Great job!
  |===========                                                                    |  14%
| This tells us that there are 194 rows, or observations, and 30 columns, or variables.
| Each observation is a country and each variable describes some characteristic of that
| country or its flag. To open a more complete description of the dataset in a separate
| text file, type viewinfo() when you are back at the prompt (>).

...
  |=============                                                                  |  16%
| As with any dataset, we'd like to know in what format the variables have been stored.
| In other words, what is the 'class' of each variable? What happens if we do
| class(flags)? Try it out.

> viewinfo()
[1] "/Library/Frameworks/R.framework/Versions/3.5/Resources/library/swirl/Courses/R_Programming/lapply_and_sapply/flag.names.txt"

| Try again. Getting it right on the first try is boring anyway! Or, type info() for
| more options.

| Type class(flags) to see what happens.

> class(flags)
[1] "data.frame"

| That's the answer I was looking for.
  |==============                                                                 |  18%
| That just tells us that the entire dataset is stored as a 'data.frame', which doesn't
| answer our question. What we really need is to call the class() function on each
| individual column. While we could do this manually (i.e. one column at a time) it's
| much faster if we can automate the process. Sounds like a loop!

...
  |================                                                               |  20%
| The lapply() function takes a list as input, applies a function to each element of the
| list, then returns a list of the same length as the original one. Since a data frame
| is really just a list of vectors (you can see this with as.list(flags)), we can use
| lapply() to apply the class() function to each column of the flags dataset. Let's see
| it in action!

...
  |=================                                                              |  22%
| Type cls_list <- lapply(flags, class) to apply the class() function to each column of
| the flags dataset and store the result in a variable called cls_list. Note that you
| just supply the name of the function you want to apply (i.e. class), without the usual
| parentheses after it.

> cls_list <- lapply(flags, class)

| Excellent job!
  |===================                                                            |  24%
| Type cls_list to view the result.

> cls_list
$name
[1] "factor"

$landmass
[1] "integer"

$zone
[1] "integer"

$area
[1] "integer"

$population
[1] "integer"

$language
[1] "integer"

$religion
[1] "integer"

$bars
[1] "integer"

$stripes
[1] "integer"

$colours
[1] "integer"

$red
[1] "integer"

$green
[1] "integer"

$blue
[1] "integer"

$gold
[1] "integer"

$white
[1] "integer"

$black
[1] "integer"

$orange
[1] "integer"

$mainhue
[1] "factor"

$circles
[1] "integer"

$crosses
[1] "integer"

$saltires
[1] "integer"

$quarters
[1] "integer"

$sunstars
[1] "integer"

$crescent
[1] "integer"

$triangle
[1] "integer"

$icon
[1] "integer"

$animate
[1] "integer"

$text
[1] "integer"

$topleft
[1] "factor"

$botright
[1] "factor"


| That's correct!
  |=====================                                                          |  26%
| The 'l' in 'lapply' stands for 'list'. Type class(cls_list) to confirm that lapply()
| returned a list.

> class(cls_list)
[1] "list"

| You got it!
  |======================                                                         |  28%
| As expected, we got a list of length 30 -- one element for each variable/column. The
| output would be considerably more compact if we could represent it as a vector instead
| of a list.

...
  |========================                                                       |  30%
| You may remember from a previous lesson that lists are most helpful for storing
| multiple classes of data. In this case, since every element of the list returned by
| lapply() is a character vector of length one (i.e. "integer" and "vector"), cls_list
| can be simplified to a character vector. To do this manually, type
| as.character(cls_list).

> as.character(cls_list)
 [1] "factor"  "integer" "integer" "integer" "integer" "integer" "integer" "integer"
 [9] "integer" "integer" "integer" "integer" "integer" "integer" "integer" "integer"
[17] "integer" "factor"  "integer" "integer" "integer" "integer" "integer" "integer"
[25] "integer" "integer" "integer" "integer" "factor"  "factor" 

| You got it right!
  |=========================                                                      |  32%
| sapply() allows you to automate this process by calling lapply() behind the scenes,
| but then attempting to simplify (hence the 's' in 'sapply') the result for you. Use
| sapply() the same way you used lapply() to get the class of each column of the flags
| dataset and store the result in cls_vect. If you need help, type ?sapply to bring up
| the documentation.

> cls_vect<- sapply(flags, class)

| That's correct!
  |===========================                                                    |  34%
| Use class(cls_vect) to confirm that sapply() simplified the result to a character
| vector.

> class(cls_vect)
[1] "character"

| Keep up the great work!
  |============================                                                   |  36%
| In general, if the result is a list where every element is of length one, then
| sapply() returns a vector. If the result is a list where every element is a vector of
| the same length (> 1), sapply() returns a matrix. If sapply() can't figure things out,
| then it just returns a list, no different from what lapply() would give you.

...
  |==============================                                                 |  38%
| Let's practice using lapply() and sapply() some more!

...
  |================================                                               |  40%
| Columns 11 through 17 of our dataset are indicator variables, each representing a
| different color. The value of the indicator variable is 1 if the color is present in a
| country's flag and 0 otherwise.

...
  |=================================                                              |  42%
| Therefore, if we want to know the total number of countries (in our dataset) with, for
| example, the color orange on their flag, we can just add up all of the 1s and 0s in
| the 'orange' column. Try sum(flags$orange) to see this.

> sum(flags$orange)
[1] 26

| You nailed it! Good job!
  |===================================                                            |  44%
| Now we want to repeat this operation for each of the colors recorded in the dataset.

...
  |====================================                                           |  46%
| First, use flag_colors <- flags[, 11:17] to extract the columns containing the color
| data and store them in a new data frame called flag_colors. (Note the comma before
| 11:17. This subsetting command tells R that we want all rows, but only columns 11
| through 17.)

> flag_colors <- flags[, 11:17]

| Keep up the great work!
  |======================================                                         |  48%
| Use the head() function to look at the first 6 lines of flag_colors.

> head(flag_colors[6])
  black
1     1
2     1
3     0
4     0
5     0
6     1

| That's not the answer I was looking for, but try again. Or, type info() for more
| options.

| head(flag_colors) will display the first six lines of flag_colors.

> head(flag_colors)
  red green blue gold white black orange
1   1     1    0    1     1     1      0
2   1     0    0    1     0     1      0
3   1     1    0    0     1     0      0
4   1     0    1    1     1     0      1
5   1     0    1    1     0     0      0
6   1     0    0    1     0     1      0

| All that practice is paying off!
  |========================================                                       |  50%
| To get a list containing the sum of each column of flag_colors, call the lapply()
| function with two arguments. The first argument is the object over which we are
| looping (i.e. flag_colors) and the second argument is the name of the function we wish
| to apply to each column (i.e. sum). Remember that the second argument is just the name
| of the function with no parentheses, etc.

> lapply(flag_colors, sum)
$red
[1] 153

$green
[1] 91

$blue
[1] 99

$gold
[1] 91

$white
[1] 146

$black
[1] 52

$orange
[1] 26


| Perseverance, that's the answer.
  |=========================================                                      |  52%
| This tells us that of the 194 flags in our dataset, 153 contain the color red, 91
| contain green, 99 contain blue, and so on.

...
  |===========================================                                    |  54%
| The result is a list, since lapply() always returns a list. Each element of this list
| is of length one, so the result can be simplified to a vector by calling sapply()
| instead of lapply(). Try it now.

> sapply(lag_colors, sum)
Error in lapply(X = X, FUN = FUN, ...) : object 'lag_colors' not found
> sapply(flag_colors, sum)
   red  green   blue   gold  white  black orange 
   153     91     99     91    146     52     26 

| That's the answer I was looking for.
  |============================================                                   |  56%
| Perhaps it's more informative to find the proportion of flags (out of 194) containing
| each color. Since each column is just a bunch of 1s and 0s, the arithmetic mean of
| each column will give us the proportion of 1s. (If it's not clear why, think of a
| simpler situation where you have three 1s and two 0s -- (1 + 1 + 1 + 0 + 0)/5 = 3/5 =
| 0.6).

...
  |==============================================                                 |  58%
| Use sapply() to apply the mean() function to each column of flag_colors. Remember that
| the second argument to sapply() should just specify the name of the function (i.e.
| mean) that you want to apply.

> sapply(flag_colors, mean)
      red     green      blue      gold     white     black    orange 
0.7886598 0.4690722 0.5103093 0.4690722 0.7525773 0.2680412 0.1340206 

| Keep working like that and you'll get there!
  |===============================================                                |  60%
| In the examples we've looked at so far, sapply() has been able to simplify the result
| to vector. That's because each element of the list returned by lapply() was a vector
| of length one. Recall that sapply() instead returns a matrix when each element of the
| list returned by lapply() is a vector of the same length (> 1).

...
  |=================================================                              |  62%
| To illustrate this, let's extract columns 19 through 23 from the flags dataset and
| store the result in a new data frame called flag_shapes. flag_shapes <- flags[, 19:23]
| will do it.

> flag_shapes <- flags[, 19:23]

| Excellent job!
  |===================================================                            |  64%
| Each of these columns (i.e. variables) represents the number of times a particular
| shape or design appears on a country's flag. We are interested in the minimum and
| maximum number of times each shape or design appears.

...
  |====================================================                           |  66%
| The range() function returns the minimum and maximum of its first argument, which
| should be a numeric vector. Use lapply() to apply the range function to each column of
| flag_shapes. Don't worry about storing the result in a new variable. By now, we know
| that lapply() always returns a list.

> lapply(flag_shapes)
Error in match.fun(FUN) : argument "FUN" is missing, with no default
> lapply(range(flag_shapes))
Error in match.fun(FUN) : argument "FUN" is missing, with no default
> lapply(flag_shapes, range())
Error in match.fun(FUN) : 
  'range()' is not a function, character or symbol
In addition: Warning messages:
1: In min(x, na.rm = na.rm) :
  no non-missing arguments to min; returning Inf
2: In max(x, na.rm = na.rm) :
  no non-missing arguments to max; returning -Inf
> lapply(flag_shapes, range)
$circles
[1] 0 4

$crosses
[1] 0 2

$saltires
[1] 0 1

$quarters
[1] 0 4

$sunstars
[1]  0 50


| You are amazing!
  |======================================================                         |  68%
| Do the same operation, but using sapply() and store the result in a variable called
| shape_mat.

> shape_mat<-sapply(flag_shapes, range)

| You are quite good my friend!
  |=======================================================                        |  70%
| View the contents of shape_mat.

> shape_mat
     circles crosses saltires quarters sunstars
[1,]       0       0        0        0        0
[2,]       4       2        1        4       50

| That's correct!
  |=========================================================                      |  72%
| Each column of shape_mat gives the minimum (row 1) and maximum (row 2) number of times
| its respective shape appears in different flags.

...
  |==========================================================                     |  74%
| Use the class() function to confirm that shape_mat is a matrix.

> class(shape_mat)
[1] "matrix"

| You are quite good my friend!
  |============================================================                   |  76%
| As we've seen, sapply() always attempts to simplify the result given by lapply(). It
| has been successful in doing so for each of the examples we've looked at so far. Let's
| look at an example where sapply() can't figure out how to simplify the result and thus
| returns a list, no different from lapply().

...
  |==============================================================                 |  78%
| When given a vector, the unique() function returns a vector with all duplicate
| elements removed. In other words, unique() returns a vector of only the 'unique'
| elements. To see how it works, try unique(c(3, 4, 5, 5, 5, 6, 6)).

> unique(c(3, 4, 5, 5, 5, 6, 6))
[1] 3 4 5 6

| That's correct!
  |===============================================================                |  80%
| We want to know the unique values for each variable in the flags dataset. To
| accomplish this, use lapply() to apply the unique() function to each column in the
| flags dataset, storing the result in a variable called unique_vals.

> unique_vals<- lapply(unique(flags))
Error in match.fun(FUN) : argument "FUN" is missing, with no default
> unique_vals<- lapply(unique(c(flags)))
Error in match.fun(FUN) : argument "FUN" is missing, with no default
> unique_vals<- unique(flags))
Error: unexpected ')' in "unique_vals<- unique(flags))"
> unique_vals<- unique(flags)

| Not quite, but you're learning! Try again. Or, type info() for more options.

| Try unique_vals <- lapply(flags, unique).

> unique_vals <- lapply(flags, unique)

| You are really on a roll!
  |=================================================================              |  82%
| Print the value of unique_vals to the console.

> unique_vals
$name
  [1] Afghanistan              Albania                  Algeria                 
  [4] American-Samoa           Andorra                  Angola                  
  [7] Anguilla                 Antigua-Barbuda          Argentina               
 [10] Argentine                Australia                Austria                 
 [13] Bahamas                  Bahrain                  Bangladesh              
 [16] Barbados                 Belgium                  Belize                  
 [19] Benin                    Bermuda                  Bhutan                  
 [22] Bolivia                  Botswana                 Brazil                  
 [25] British-Virgin-Isles     Brunei                   Bulgaria                
 [28] Burkina                  Burma                    Burundi                 
 [31] Cameroon                 Canada                   Cape-Verde-Islands      
 [34] Cayman-Islands           Central-African-Republic Chad                    
 [37] Chile                    China                    Colombia                
 [40] Comorro-Islands          Congo                    Cook-Islands            
 [43] Costa-Rica               Cuba                     Cyprus                  
 [46] Czechoslovakia           Denmark                  Djibouti                
 [49] Dominica                 Dominican-Republic       Ecuador                 
 [52] Egypt                    El-Salvador              Equatorial-Guinea       
 [55] Ethiopia                 Faeroes                  Falklands-Malvinas      
 [58] Fiji                     Finland                  France                  
 [61] French-Guiana            French-Polynesia         Gabon                   
 [64] Gambia                   Germany-DDR              Germany-FRG             
 [67] Ghana                    Gibraltar                Greece                  
 [70] Greenland                Grenada                  Guam                    
 [73] Guatemala                Guinea                   Guinea-Bissau           
 [76] Guyana                   Haiti                    Honduras                
 [79] Hong-Kong                Hungary                  Iceland                 
 [82] India                    Indonesia                Iran                    
 [85] Iraq                     Ireland                  Israel                  
 [88] Italy                    Ivory-Coast              Jamaica                 
 [91] Japan                    Jordan                   Kampuchea               
 [94] Kenya                    Kiribati                 Kuwait                  
 [97] Laos                     Lebanon                  Lesotho                 
[100] Liberia                  Libya                    Liechtenstein           
[103] Luxembourg               Malagasy                 Malawi                  
[106] Malaysia                 Maldive-Islands          Mali                    
[109] Malta                    Marianas                 Mauritania              
[112] Mauritius                Mexico                   Micronesia              
[115] Monaco                   Mongolia                 Montserrat              
[118] Morocco                  Mozambique               Nauru                   
[121] Nepal                    Netherlands              Netherlands-Antilles    
[124] New-Zealand              Nicaragua                Niger                   
[127] Nigeria                  Niue                     North-Korea             
[130] North-Yemen              Norway                   Oman                    
[133] Pakistan                 Panama                   Papua-New-Guinea        
[136] Parguay                  Peru                     Philippines             
[139] Poland                   Portugal                 Puerto-Rico             
[142] Qatar                    Romania                  Rwanda                  
[145] San-Marino               Sao-Tome                 Saudi-Arabia            
[148] Senegal                  Seychelles               Sierra-Leone            
[151] Singapore                Soloman-Islands          Somalia                 
[154] South-Africa             South-Korea              South-Yemen             
[157] Spain                    Sri-Lanka                St-Helena               
[160] St-Kitts-Nevis           St-Lucia                 St-Vincent              
[163] Sudan                    Surinam                  Swaziland               
[166] Sweden                   Switzerland              Syria                   
[169] Taiwan                   Tanzania                 Thailand                
[172] Togo                     Tonga                    Trinidad-Tobago         
[175] Tunisia                  Turkey                   Turks-Cocos-Islands     
[178] Tuvalu                   UAE                      Uganda                  
[181] UK                       Uruguay                  US-Virgin-Isles         
[184] USA                      USSR                     Vanuatu                 
[187] Vatican-City             Venezuela                Vietnam                 
[190] Western-Samoa            Yugoslavia               Zaire                   
[193] Zambia                   Zimbabwe                
194 Levels: Afghanistan Albania Algeria American-Samoa Andorra Angola ... Zimbabwe

$landmass
[1] 5 3 4 6 1 2

$zone
[1] 1 3 2 4

$area
  [1]   648    29  2388     0  1247  2777  7690    84    19     1   143    31    23   113
 [15]    47  1099   600  8512     6   111   274   678    28   474  9976     4   623  1284
 [29]   757  9561  1139     2   342    51   115     9   128    43    22    49   284  1001
 [43]    21  1222    12    18   337   547    91   268    10   108   249   239   132  2176
 [57]   109   246    36   215   112    93   103  3268  1904  1648   435    70   301   323
 [71]    11   372    98   181   583   236    30  1760     3   587   118   333  1240  1031
 [85]  1973  1566   447   783   140    41  1267   925   121   195   324   212   804    76
 [99]   463   407  1285   300   313    92   237    26  2150   196    72   637  1221    99
[113]   288   505    66  2506    63    17   450   185   945   514    57     5   164   781
[127]   245   178  9363 22402    15   912   256   905   753   391

$population
 [1]   16    3   20    0    7   28   15    8   90   10    1    6  119    9   35    4   24
[18]    2   11 1008    5   47   31   54   17   61   14  684  157   39   57  118   13   77
[35]   12   56   18   84   48   36   22   29   38   49   45  231  274   60

$language
 [1] 10  6  8  1  2  4  3  5  7  9

$religion
[1] 2 6 1 0 5 3 4 7

$bars
[1] 0 2 3 1 5

$stripes
 [1]  3  0  2  1  5  9 11 14  4  6 13  7

$colours
[1] 5 3 2 8 6 4 7 1

$red
[1] 1 0

$green
[1] 1 0

$blue
[1] 0 1

$gold
[1] 1 0

$white
[1] 1 0

$black
[1] 1 0

$orange
[1] 0 1

$mainhue
[1] green  red    blue   gold   white  orange black  brown 
Levels: black blue brown gold green orange red white

$circles
[1] 0 1 4 2

$crosses
[1] 0 1 2

$saltires
[1] 0 1

$quarters
[1] 0 1 4

$sunstars
 [1]  1  0  6 22 14  3  4  5 15 10  7  2  9 50

$crescent
[1] 0 1

$triangle
[1] 0 1

$icon
[1] 1 0

$animate
[1] 0 1

$text
[1] 0 1

$topleft
[1] black  red    green  blue   white  orange gold  
Levels: black blue gold green orange red white

$botright
[1] green  red    white  black  blue   gold   orange brown 
Levels: black blue brown gold green orange red white


| That's the answer I was looking for.
  |==================================================================             |  84%
| Since unique_vals is a list, you can use what you've learned to determine the length
| of each element of unique_vals (i.e. the number of unique values for each variable).
| Simplify the result, if possible. Hint: Apply the length() function to each element of
| unique_vals.

> length(unique_vals)
[1] 30

| Give it another try. Or, type info() for more options.

| Apply the length() function to each element of the unique_vals list using sapply().
| Remember, no parentheses after the name of the function you are applying (i.e.
| length).

> sapply(unique_vals, length)
      name   landmass       zone       area population   language   religion       bars 
       194          6          4        136         48         10          8          5 
   stripes    colours        red      green       blue       gold      white      black 
        12          8          2          2          2          2          2          2 
    orange    mainhue    circles    crosses   saltires   quarters   sunstars   crescent 
         2          8          4          3          2          3         14          2 
  triangle       icon    animate       text    topleft   botright 
         2          2          2          2          7          8 

| You are doing so well!
  |====================================================================           |  86%
| The fact that the elements of the unique_vals list are all vectors of *different*
| length poses a problem for sapply(), since there's no obvious way of simplifying the
| result.

...
  |======================================================================         |  88%
| Use sapply() to apply the unique() function to each column of the flags dataset to see
| that you get the same unsimplified list that you got from lapply().

> sapply(flags, unique)
$name
  [1] Afghanistan              Albania                  Algeria                 
  [4] American-Samoa           Andorra                  Angola                  
  [7] Anguilla                 Antigua-Barbuda          Argentina               
 [10] Argentine                Australia                Austria                 
 [13] Bahamas                  Bahrain                  Bangladesh              
 [16] Barbados                 Belgium                  Belize                  
 [19] Benin                    Bermuda                  Bhutan                  
 [22] Bolivia                  Botswana                 Brazil                  
 [25] British-Virgin-Isles     Brunei                   Bulgaria                
 [28] Burkina                  Burma                    Burundi                 
 [31] Cameroon                 Canada                   Cape-Verde-Islands      
 [34] Cayman-Islands           Central-African-Republic Chad                    
 [37] Chile                    China                    Colombia                
 [40] Comorro-Islands          Congo                    Cook-Islands            
 [43] Costa-Rica               Cuba                     Cyprus                  
 [46] Czechoslovakia           Denmark                  Djibouti                
 [49] Dominica                 Dominican-Republic       Ecuador                 
 [52] Egypt                    El-Salvador              Equatorial-Guinea       
 [55] Ethiopia                 Faeroes                  Falklands-Malvinas      
 [58] Fiji                     Finland                  France                  
 [61] French-Guiana            French-Polynesia         Gabon                   
 [64] Gambia                   Germany-DDR              Germany-FRG             
 [67] Ghana                    Gibraltar                Greece                  
 [70] Greenland                Grenada                  Guam                    
 [73] Guatemala                Guinea                   Guinea-Bissau           
 [76] Guyana                   Haiti                    Honduras                
 [79] Hong-Kong                Hungary                  Iceland                 
 [82] India                    Indonesia                Iran                    
 [85] Iraq                     Ireland                  Israel                  
 [88] Italy                    Ivory-Coast              Jamaica                 
 [91] Japan                    Jordan                   Kampuchea               
 [94] Kenya                    Kiribati                 Kuwait                  
 [97] Laos                     Lebanon                  Lesotho                 
[100] Liberia                  Libya                    Liechtenstein           
[103] Luxembourg               Malagasy                 Malawi                  
[106] Malaysia                 Maldive-Islands          Mali                    
[109] Malta                    Marianas                 Mauritania              
[112] Mauritius                Mexico                   Micronesia              
[115] Monaco                   Mongolia                 Montserrat              
[118] Morocco                  Mozambique               Nauru                   
[121] Nepal                    Netherlands              Netherlands-Antilles    
[124] New-Zealand              Nicaragua                Niger                   
[127] Nigeria                  Niue                     North-Korea             
[130] North-Yemen              Norway                   Oman                    
[133] Pakistan                 Panama                   Papua-New-Guinea        
[136] Parguay                  Peru                     Philippines             
[139] Poland                   Portugal                 Puerto-Rico             
[142] Qatar                    Romania                  Rwanda                  
[145] San-Marino               Sao-Tome                 Saudi-Arabia            
[148] Senegal                  Seychelles               Sierra-Leone            
[151] Singapore                Soloman-Islands          Somalia                 
[154] South-Africa             South-Korea              South-Yemen             
[157] Spain                    Sri-Lanka                St-Helena               
[160] St-Kitts-Nevis           St-Lucia                 St-Vincent              
[163] Sudan                    Surinam                  Swaziland               
[166] Sweden                   Switzerland              Syria                   
[169] Taiwan                   Tanzania                 Thailand                
[172] Togo                     Tonga                    Trinidad-Tobago         
[175] Tunisia                  Turkey                   Turks-Cocos-Islands     
[178] Tuvalu                   UAE                      Uganda                  
[181] UK                       Uruguay                  US-Virgin-Isles         
[184] USA                      USSR                     Vanuatu                 
[187] Vatican-City             Venezuela                Vietnam                 
[190] Western-Samoa            Yugoslavia               Zaire                   
[193] Zambia                   Zimbabwe                
194 Levels: Afghanistan Albania Algeria American-Samoa Andorra Angola ... Zimbabwe

$landmass
[1] 5 3 4 6 1 2

$zone
[1] 1 3 2 4

$area
  [1]   648    29  2388     0  1247  2777  7690    84    19     1   143    31    23   113
 [15]    47  1099   600  8512     6   111   274   678    28   474  9976     4   623  1284
 [29]   757  9561  1139     2   342    51   115     9   128    43    22    49   284  1001
 [43]    21  1222    12    18   337   547    91   268    10   108   249   239   132  2176
 [57]   109   246    36   215   112    93   103  3268  1904  1648   435    70   301   323
 [71]    11   372    98   181   583   236    30  1760     3   587   118   333  1240  1031
 [85]  1973  1566   447   783   140    41  1267   925   121   195   324   212   804    76
 [99]   463   407  1285   300   313    92   237    26  2150   196    72   637  1221    99
[113]   288   505    66  2506    63    17   450   185   945   514    57     5   164   781
[127]   245   178  9363 22402    15   912   256   905   753   391

$population
 [1]   16    3   20    0    7   28   15    8   90   10    1    6  119    9   35    4   24
[18]    2   11 1008    5   47   31   54   17   61   14  684  157   39   57  118   13   77
[35]   12   56   18   84   48   36   22   29   38   49   45  231  274   60

$language
 [1] 10  6  8  1  2  4  3  5  7  9

$religion
[1] 2 6 1 0 5 3 4 7

$bars
[1] 0 2 3 1 5

$stripes
 [1]  3  0  2  1  5  9 11 14  4  6 13  7

$colours
[1] 5 3 2 8 6 4 7 1

$red
[1] 1 0

$green
[1] 1 0

$blue
[1] 0 1

$gold
[1] 1 0

$white
[1] 1 0

$black
[1] 1 0

$orange
[1] 0 1

$mainhue
[1] green  red    blue   gold   white  orange black  brown 
Levels: black blue brown gold green orange red white

$circles
[1] 0 1 4 2

$crosses
[1] 0 1 2

$saltires
[1] 0 1

$quarters
[1] 0 1 4

$sunstars
 [1]  1  0  6 22 14  3  4  5 15 10  7  2  9 50

$crescent
[1] 0 1

$triangle
[1] 0 1

$icon
[1] 1 0

$animate
[1] 0 1

$text
[1] 0 1

$topleft
[1] black  red    green  blue   white  orange gold  
Levels: black blue gold green orange red white

$botright
[1] green  red    white  black  blue   gold   orange brown 
Levels: black blue brown gold green orange red white


| You are really on a roll!
  |=======================================================================        |  90%
| Occasionally, you may need to apply a function that is not yet defined, thus requiring
| you to write your own. Writing functions in R is beyond the scope of this lesson, but
| let's look at a quick example of how you might do so in the context of loop functions.

...
  |=========================================================================      |  92%
| Pretend you are interested in only the second item from each element of the
| unique_vals list that you just created. Since each element of the unique_vals list is
| a vector and we're not aware of any built-in function in R that returns the second
| element of a vector, we will construct our own function.

...
  |==========================================================================     |  94%
| lapply(unique_vals, function(elem) elem[2]) will return a list containing the second
| item from each element of the unique_vals list. Note that our function takes one
| argument, elem, which is just a 'dummy variable' that takes on the value of each
| element of unique_vals, in turn.

> 
> lapply(unique_vals, function(elem) elem[2])
$name
[1] Albania
194 Levels: Afghanistan Albania Algeria American-Samoa Andorra Angola ... Zimbabwe

$landmass
[1] 3

$zone
[1] 3

$area
[1] 29

$population
[1] 3

$language
[1] 6

$religion
[1] 6

$bars
[1] 2

$stripes
[1] 0

$colours
[1] 3

$red
[1] 0

$green
[1] 0

$blue
[1] 1

$gold
[1] 0

$white
[1] 0

$black
[1] 0

$orange
[1] 1

$mainhue
[1] red
Levels: black blue brown gold green orange red white

$circles
[1] 1

$crosses
[1] 1

$saltires
[1] 1

$quarters
[1] 1

$sunstars
[1] 0

$crescent
[1] 1

$triangle
[1] 1

$icon
[1] 0

$animate
[1] 1

$text
[1] 1

$topleft
[1] red
Levels: black blue gold green orange red white

$botright
[1] red
Levels: black blue brown gold green orange red white


| Great job!
  |============================================================================   |  96%
| The only difference between previous examples and this one is that we are defining and
| using our own function right in the call to lapply(). Our function has no name and
| disappears as soon as lapply() is done using it. So-called 'anonymous functions' can
| be very useful when one of R's built-in functions isn't an option.

...
  |=============================================================================  |  98%
| In this lesson, you learned how to use the powerful lapply() and sapply() functions to
| apply an operation over the elements of a list. In the next lesson, we'll take a look
| at some close relatives of lapply() and sapply().

...
  |===============================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? manwarsan@gmail.com
What is your assignment token? 1ljOseaWljIBUmRQ
Grade submission succeeded!

| You are really on a roll!

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

Selection: 11
  |                                                                               |   0%

| In the last lesson, you learned about the two most fundamental members of R's *apply
| family of functions: lapply() and sapply(). Both take a list as input, apply a
| function to each element of the list, then combine and return the result. lapply()
| always returns a list, whereas sapply() attempts to simplify the result.

...
  |===                                                                            |   4%
| In this lesson, you'll learn how to use vapply() and tapply(), each of which serves a
| very specific purpose within the Split-Apply-Combine methodology. For consistency,
| we'll use the same dataset we used in the 'lapply and sapply' lesson.

...
  |======                                                                         |   8%
| The Flags dataset from the UCI Machine Learning Repository contains details of various
| nations and their flags. More information may be found here:
| http://archive.ics.uci.edu/ml/datasets/Flags

...
  |=========                                                                      |  12%
| I've stored the data in a variable called flags. If it's been a while since you
| completed the 'lapply and sapply' lesson, you may want to reacquaint yourself with the
| data by using functions like dim(), head(), str(), and summary() when you return to
| the prompt (>). You can also type viewinfo() at the prompt to bring up some
| documentation for the dataset. Let's get started!

...
  |=============                                                                  |  16%
| As you saw in the last lesson, the unique() function returns a vector of the unique
| values contained in the object passed to it. Therefore, sapply(flags, unique) returns
| a list containing one vector of unique values for each column of the flags dataset.
| Try it again now.

> sapply(flags, unique)
$name
  [1] Afghanistan              Albania                  Algeria                 
  [4] American-Samoa           Andorra                  Angola                  
  [7] Anguilla                 Antigua-Barbuda          Argentina               
 [10] Argentine                Australia                Austria                 
 [13] Bahamas                  Bahrain                  Bangladesh              
 [16] Barbados                 Belgium                  Belize                  
 [19] Benin                    Bermuda                  Bhutan                  
 [22] Bolivia                  Botswana                 Brazil                  
 [25] British-Virgin-Isles     Brunei                   Bulgaria                
 [28] Burkina                  Burma                    Burundi                 
 [31] Cameroon                 Canada                   Cape-Verde-Islands      
 [34] Cayman-Islands           Central-African-Republic Chad                    
 [37] Chile                    China                    Colombia                
 [40] Comorro-Islands          Congo                    Cook-Islands            
 [43] Costa-Rica               Cuba                     Cyprus                  
 [46] Czechoslovakia           Denmark                  Djibouti                
 [49] Dominica                 Dominican-Republic       Ecuador                 
 [52] Egypt                    El-Salvador              Equatorial-Guinea       
 [55] Ethiopia                 Faeroes                  Falklands-Malvinas      
 [58] Fiji                     Finland                  France                  
 [61] French-Guiana            French-Polynesia         Gabon                   
 [64] Gambia                   Germany-DDR              Germany-FRG             
 [67] Ghana                    Gibraltar                Greece                  
 [70] Greenland                Grenada                  Guam                    
 [73] Guatemala                Guinea                   Guinea-Bissau           
 [76] Guyana                   Haiti                    Honduras                
 [79] Hong-Kong                Hungary                  Iceland                 
 [82] India                    Indonesia                Iran                    
 [85] Iraq                     Ireland                  Israel                  
 [88] Italy                    Ivory-Coast              Jamaica                 
 [91] Japan                    Jordan                   Kampuchea               
 [94] Kenya                    Kiribati                 Kuwait                  
 [97] Laos                     Lebanon                  Lesotho                 
[100] Liberia                  Libya                    Liechtenstein           
[103] Luxembourg               Malagasy                 Malawi                  
[106] Malaysia                 Maldive-Islands          Mali                    
[109] Malta                    Marianas                 Mauritania              
[112] Mauritius                Mexico                   Micronesia              
[115] Monaco                   Mongolia                 Montserrat              
[118] Morocco                  Mozambique               Nauru                   
[121] Nepal                    Netherlands              Netherlands-Antilles    
[124] New-Zealand              Nicaragua                Niger                   
[127] Nigeria                  Niue                     North-Korea             
[130] North-Yemen              Norway                   Oman                    
[133] Pakistan                 Panama                   Papua-New-Guinea        
[136] Parguay                  Peru                     Philippines             
[139] Poland                   Portugal                 Puerto-Rico             
[142] Qatar                    Romania                  Rwanda                  
[145] San-Marino               Sao-Tome                 Saudi-Arabia            
[148] Senegal                  Seychelles               Sierra-Leone            
[151] Singapore                Soloman-Islands          Somalia                 
[154] South-Africa             South-Korea              South-Yemen             
[157] Spain                    Sri-Lanka                St-Helena               
[160] St-Kitts-Nevis           St-Lucia                 St-Vincent              
[163] Sudan                    Surinam                  Swaziland               
[166] Sweden                   Switzerland              Syria                   
[169] Taiwan                   Tanzania                 Thailand                
[172] Togo                     Tonga                    Trinidad-Tobago         
[175] Tunisia                  Turkey                   Turks-Cocos-Islands     
[178] Tuvalu                   UAE                      Uganda                  
[181] UK                       Uruguay                  US-Virgin-Isles         
[184] USA                      USSR                     Vanuatu                 
[187] Vatican-City             Venezuela                Vietnam                 
[190] Western-Samoa            Yugoslavia               Zaire                   
[193] Zambia                   Zimbabwe                
194 Levels: Afghanistan Albania Algeria American-Samoa Andorra Angola ... Zimbabwe

$landmass
[1] 5 3 4 6 1 2

$zone
[1] 1 3 2 4

$area
  [1]   648    29  2388     0  1247  2777  7690    84    19     1   143    31    23   113
 [15]    47  1099   600  8512     6   111   274   678    28   474  9976     4   623  1284
 [29]   757  9561  1139     2   342    51   115     9   128    43    22    49   284  1001
 [43]    21  1222    12    18   337   547    91   268    10   108   249   239   132  2176
 [57]   109   246    36   215   112    93   103  3268  1904  1648   435    70   301   323
 [71]    11   372    98   181   583   236    30  1760     3   587   118   333  1240  1031
 [85]  1973  1566   447   783   140    41  1267   925   121   195   324   212   804    76
 [99]   463   407  1285   300   313    92   237    26  2150   196    72   637  1221    99
[113]   288   505    66  2506    63    17   450   185   945   514    57     5   164   781
[127]   245   178  9363 22402    15   912   256   905   753   391

$population
 [1]   16    3   20    0    7   28   15    8   90   10    1    6  119    9   35    4   24
[18]    2   11 1008    5   47   31   54   17   61   14  684  157   39   57  118   13   77
[35]   12   56   18   84   48   36   22   29   38   49   45  231  274   60

$language
 [1] 10  6  8  1  2  4  3  5  7  9

$religion
[1] 2 6 1 0 5 3 4 7

$bars
[1] 0 2 3 1 5

$stripes
 [1]  3  0  2  1  5  9 11 14  4  6 13  7

$colours
[1] 5 3 2 8 6 4 7 1

$red
[1] 1 0

$green
[1] 1 0

$blue
[1] 0 1

$gold
[1] 1 0

$white
[1] 1 0

$black
[1] 1 0

$orange
[1] 0 1

$mainhue
[1] green  red    blue   gold   white  orange black  brown 
Levels: black blue brown gold green orange red white

$circles
[1] 0 1 4 2

$crosses
[1] 0 1 2

$saltires
[1] 0 1

$quarters
[1] 0 1 4

$sunstars
 [1]  1  0  6 22 14  3  4  5 15 10  7  2  9 50

$crescent
[1] 0 1

$triangle
[1] 0 1

$icon
[1] 1 0

$animate
[1] 0 1

$text
[1] 0 1

$topleft
[1] black  red    green  blue   white  orange gold  
Levels: black blue gold green orange red white

$botright
[1] green  red    white  black  blue   gold   orange brown 
Levels: black blue brown gold green orange red white


| Great job!
  |================                                                               |  20%
| What if you had forgotten how unique() works and mistakenly thought it returns the
| *number* of unique values contained in the object passed to it? Then you might have
| incorrectly expected sapply(flags, unique) to return a numeric vector, since each
| element of the list returned would contain a single number and sapply() could then
| simplify the result to a vector.

...
  |===================                                                            |  24%
| When working interactively (at the prompt), this is not much of a problem, since you
| see the result immediately and will quickly recognize your mistake. However, when
| working non-interactively (e.g. writing your own functions), a misunderstanding may go
| undetected and cause incorrect results later on. Therefore, you may wish to be more
| careful and that's where vapply() is useful.

...
  |======================                                                         |  28%
| Whereas sapply() tries to 'guess' the correct format of the result, vapply() allows
| you to specify it explicitly. If the result doesn't match the format you specify,
| vapply() will throw an error, causing the operation to stop. This can prevent
| significant problems in your code that might be caused by getting unexpected return
| values from sapply().

...
  |=========================                                                      |  32%
| Try vapply(flags, unique, numeric(1)), which says that you expect each element of the
| result to be a numeric vector of length 1. Since this is NOT actually the case, YOU
| WILL GET AN ERROR. Once you get the error, type ok() to continue to the next question.

> vapply(flags, unique, numeric(1))
Error in vapply(flags, unique, numeric(1)) : values must be length 1,
 but FUN(X[[1]]) result is length 194
> ok()

| Nice work!
  |============================                                                   |  36%
| Recall from the previous lesson that sapply(flags, class) will return a character
| vector containing the class of each column in the dataset. Try that again now to see
| the result.

> sapply(flags, class)
      name   landmass       zone       area population   language   religion       bars 
  "factor"  "integer"  "integer"  "integer"  "integer"  "integer"  "integer"  "integer" 
   stripes    colours        red      green       blue       gold      white      black 
 "integer"  "integer"  "integer"  "integer"  "integer"  "integer"  "integer"  "integer" 
    orange    mainhue    circles    crosses   saltires   quarters   sunstars   crescent 
 "integer"   "factor"  "integer"  "integer"  "integer"  "integer"  "integer"  "integer" 
  triangle       icon    animate       text    topleft   botright 
 "integer"  "integer"  "integer"  "integer"   "factor"   "factor" 

| Great job!
  |================================                                               |  40%
| If we wish to be explicit about the format of the result we expect, we can use
| vapply(flags, class, character(1)). The 'character(1)' argument tells R that we expect
| the class function to return a character vector of length 1 when applied to EACH
| column of the flags dataset. Try it now.

> vapply(flags, class, character(1))
      name   landmass       zone       area population   language   religion       bars 
  "factor"  "integer"  "integer"  "integer"  "integer"  "integer"  "integer"  "integer" 
   stripes    colours        red      green       blue       gold      white      black 
 "integer"  "integer"  "integer"  "integer"  "integer"  "integer"  "integer"  "integer" 
    orange    mainhue    circles    crosses   saltires   quarters   sunstars   crescent 
 "integer"   "factor"  "integer"  "integer"  "integer"  "integer"  "integer"  "integer" 
  triangle       icon    animate       text    topleft   botright 
 "integer"  "integer"  "integer"  "integer"   "factor"   "factor" 

| That's correct!
  |===================================                                            |  44%
| Note that since our expectation was correct (i.e. character(1)), the vapply() result
| is identical to the sapply() result -- a character vector of column classes.

...
  |======================================                                         |  48%
| You might think of vapply() as being 'safer' than sapply(), since it requires you to
| specify the format of the output in advance, instead of just allowing R to 'guess'
| what you wanted. In addition, vapply() may perform faster than sapply() for large
| datasets. However, when doing data analysis interactively (at the prompt), sapply()
| saves you some typing and will often be good enough.

...
  |=========================================                                      |  52%
| As a data analyst, you'll often wish to split your data up into groups based on the
| value of some variable, then apply a function to the members of each group. The next
| function we'll look at, tapply(), does exactly that.

...
  |============================================                                   |  56%
| Use ?tapply to pull up the documentation.

> tapply(flags)
Error in tapply(flags) : argument "INDEX" is missing, with no default
> tapply(flags, class, character(1))
Error in get(as.character(FUN), mode = "function", envir = envir) : 
  invalid first argument
> tapply()
Error in tapply() : argument "INDEX" is missing, with no default
> ?tapply
starting httpd help server ... done

| All that practice is paying off!
  |===============================================                                |  60%
| The 'landmass' variable in our dataset takes on integer values between 1 and 6, each
| of which represents a different part of the world. Use table(flags$landmass) to see
| how many flags/countries fall into each group.

> table(flags$landmass)

 1  2  3  4  5  6 
31 17 35 52 39 20 

| Excellent work!
  |===================================================                            |  64%
| The 'animate' variable in our dataset takes the value 1 if a country's flag contains
| an animate image (e.g. an eagle, a tree, a human hand) and 0 otherwise. Use
| table(flags$animate) to see how many flags contain an animate image.

> table(flags$animate)

  0   1 
155  39 

| That's correct!
  |======================================================                         |  68%
| This tells us that 39 flags contain an animate object (animate = 1) and 155 do not
| (animate = 0).

...
  |=========================================================                      |  72%
| If you take the arithmetic mean of a bunch of 0s and 1s, you get the proportion of 1s.
| Use tapply(flags$animate, flags$landmass, mean) to apply the mean function to the
| 'animate' variable separately for each of the six landmass groups, thus giving us the
| proportion of flags containing an animate image WITHIN each landmass group.

> tapply(flags$animate, flags$landmass, mean)
        1         2         3         4         5         6 
0.4193548 0.1764706 0.1142857 0.1346154 0.1538462 0.3000000 

| You're the best!
  |============================================================                   |  76%
| The first landmass group (landmass = 1) corresponds to North America and contains the
| highest proportion of flags with an animate image (0.4194).

...
  |===============================================================                |  80%
| Similarly, we can look at a summary of population values (in round millions) for
| countries with and without the color red on their flag with tapply(flags$population,
| flags$red, summary).

> tapply(flags$population, flags$red, summary)
$`0`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   0.00    0.00    3.00   27.63    9.00  684.00 

$`1`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    0.0     0.0     4.0    22.1    15.0  1008.0 


| Nice work!
  |==================================================================             |  84%
| What is the median population (in millions) for countries *without* the color red on
| their flag?

1: 9.0
2: 3.0
3: 4.0
4: 22.1
5: 27.6
6: 0.0

Selection: 2

| Excellent job!
  |======================================================================         |  88%
| Lastly, use the same approach to look at a summary of population values for each of
| the six landmasses.

> tapply(flags$population, flags$landmass, summary)
$`1`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   0.00    0.00    0.00   12.29    4.50  231.00 

$`2`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   0.00    1.00    6.00   15.71   15.00  119.00 

$`3`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   0.00    0.00    8.00   13.86   16.00   61.00 

$`4`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  0.000   1.000   5.000   8.788   9.750  56.000 

$`5`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   0.00    2.00   10.00   69.18   39.00 1008.00 

$`6`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   0.00    0.00    0.00   11.30    1.25  157.00 


| Excellent work!
  |=========================================================================      |  92%
| What is the maximum population (in millions) for the fourth landmass group (Africa)?

1: 1010.0
2: 5.00
3: 157.00
4: 56.00
5: 119.0

Selection: 2

| Almost! Try again.

| Use your result from the last question.

1: 119.0
2: 1010.0
3: 5.00
4: 157.00
5: 56.00

Selection: 5

| You're the best!
  |============================================================================   |  96%
| In this lesson, you learned how to use vapply() as a safer alternative to sapply(),
| which is most helpful when writing your own functions. You also learned how to use
| tapply() to split your data into groups based on the value of some variable, then
| apply a function to each group. These functions will come in handy on your quest to
| become a better data analyst.

...
  |===============================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? manwarsan@gmail.com
What is your assignment token? j7RJfzHp0J9tfeZa
Grade submission succeeded!

| You got it!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 2

| OK. I'm opening the swirl courses web page in your browser.

| Leaving swirl now. Type swirl() to resume.

> library(datasets)
> data(iris)
> ?iris
> round(mean(iris[which(iris$Species == "virginica"),]$Sepal.Length))
[1] 7
> library(data.table)
Error in library(data.table) : there is no package called 'data.table'
> iris_dt <- as.data.table(iris)
Error in as.data.table(iris) : could not find function "as.data.table"
> iris_dt[Species == "virginica",round(mean(Sepal.Length)) ]
Error: object 'iris_dt' not found
> apply(iris[, 1:4], 2, mean)
Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
    5.843333     3.057333     3.758000     1.199333 
> library(datasets)
> data(mtcars)
> ?mtcars
> sapply(split(mtcars$mpg, mtcars$cyl), mean)
       4        6        8 
26.66364 19.74286 15.10000 
> with(mtcars, tapply(mpg, cyl, mean))
       4        6        8 
26.66364 19.74286 15.10000 
> tapply(mtcars$mpg, mtcars$cyl, mean)
       4        6        8 
26.66364 19.74286 15.10000 
> sapply(mtcars, cyl, mean)
Error in match.fun(FUN) : object 'cyl' not found
> apply(mtcars, 2, mean)
       mpg        cyl       disp         hp       drat         wt       qsec         vs 
 20.090625   6.187500 230.721875 146.687500   3.596563   3.217250  17.848750   0.437500 
        am       gear       carb 
  0.406250   3.687500   2.812500 
> split(mtcars, mtcars$cyl)
$`4`
                mpg cyl  disp  hp drat    wt  qsec vs am gear carb
Datsun 710     22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
Merc 240D      24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
Merc 230       22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
Fiat 128       32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
Honda Civic    30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2
Toyota Corolla 33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
Toyota Corona  21.5   4 120.1  97 3.70 2.465 20.01  1  0    3    1
Fiat X1-9      27.3   4  79.0  66 4.08 1.935 18.90  1  1    4    1
Porsche 914-2  26.0   4 120.3  91 4.43 2.140 16.70  0  1    5    2
Lotus Europa   30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2
Volvo 142E     21.4   4 121.0 109 4.11 2.780 18.60  1  1    4    2

$`6`
                mpg cyl  disp  hp drat    wt  qsec vs am gear carb
Mazda RX4      21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag  21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
Hornet 4 Drive 21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
Valiant        18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
Merc 280       19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4
Merc 280C      17.8   6 167.6 123 3.92 3.440 18.90  1  0    4    4
Ferrari Dino   19.7   6 145.0 175 3.62 2.770 15.50  0  1    5    6

$`8`
                     mpg cyl  disp  hp drat    wt  qsec vs am gear carb
Hornet Sportabout   18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
Duster 360          14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4
Merc 450SE          16.4   8 275.8 180 3.07 4.070 17.40  0  0    3    3
Merc 450SL          17.3   8 275.8 180 3.07 3.730 17.60  0  0    3    3
Merc 450SLC         15.2   8 275.8 180 3.07 3.780 18.00  0  0    3    3
Cadillac Fleetwood  10.4   8 472.0 205 2.93 5.250 17.98  0  0    3    4
Lincoln Continental 10.4   8 460.0 215 3.00 5.424 17.82  0  0    3    4
Chrysler Imperial   14.7   8 440.0 230 3.23 5.345 17.42  0  0    3    4
Dodge Challenger    15.5   8 318.0 150 2.76 3.520 16.87  0  0    3    2
AMC Javelin         15.2   8 304.0 150 3.15 3.435 17.30  0  0    3    2
Camaro Z28          13.3   8 350.0 245 3.73 3.840 15.41  0  0    3    4
Pontiac Firebird    19.2   8 400.0 175 3.08 3.845 17.05  0  0    3    2
Ford Pantera L      15.8   8 351.0 264 4.22 3.170 14.50  0  1    5    4
Maserati Bora       15.0   8 301.0 335 3.54 3.570 14.60  0  1    5    8

> lapply(mtcars, mean)
$mpg
[1] 20.09062

$cyl
[1] 6.1875

$disp
[1] 230.7219

$hp
[1] 146.6875

$drat
[1] 3.596563

$wt
[1] 3.21725

$qsec
[1] 17.84875

$vs
[1] 0.4375

$am
[1] 0.40625

$gear
[1] 3.6875

$carb
[1] 2.8125

> new <- tapply(mtcars$hp, mtcars$cyl, mean)
> round(abs(new[3]-new[1]))
  8 
127 
> mtcars_dt <- as.data.table(mtcars)
Error in as.data.table(mtcars) : could not find function "as.data.table"
> mtcars_dt <- mtcars_dt[,  .(mean_cols = mean(hp)), by = cyl]
Error: object 'mtcars_dt' not found
> round(abs(mtcars_dt[cyl == 4, mean_cols] - mtcars_dt[cyl == 8, mean_cols]))
Error: object 'mtcars_dt' not found
> abs(mean(split(mtcars, mtcars$cyl)$'4'$hp) - mean(split(mtcars, mtcars$cyl)$'8'$hp))
[1] 126.5779
> debug(ls)
> ls
function (name, pos = -1L, envir = as.environment(pos), all.names = FALSE, 
    pattern, sorted = TRUE) 
{
    if (!missing(name)) {
        pos <- tryCatch(name, error = function(e) e)
        if (inherits(pos, "error")) {
            name <- substitute(name)
            if (!is.character(name)) 
                name <- deparse(name)
            warning(gettextf("%s converted to character string", 
                sQuote(name)), domain = NA)
            pos <- name
        }
    }
    all.names <- .Internal(ls(envir, all.names, sorted))
    if (!missing(pattern)) {
        if ((ll <- length(grep("[", pattern, fixed = TRUE))) && 
            ll != length(grep("]", pattern, fixed = TRUE))) {
            if (pattern == "[") {
                pattern <- "\\["
                warning("replaced regular expression pattern '[' by  '\\\\['")
            }
            else if (length(grep("[^\\\\]\\[<-", pattern))) {
                pattern <- sub("\\[<-", "\\\\\\[<-", pattern)
                warning("replaced '[<-' by '\\\\[<-' in regular expression pattern")
            }
        }
        grep(pattern, all.names, value = TRUE)
    }
    else all.names
}
<bytecode: 0x7f885554ad88>
<environment: namespace:base>
> 
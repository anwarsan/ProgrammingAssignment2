> library(swirl)

| Hi! I see that you have some variables saved in your workspace. To keep things running
| smoothly, I recommend you clean up before starting swirl.

| Type ls() to see a list of the variables in your workspace. Then, type rm(list=ls())
| to clear your workspace.

| Type swirl() when you are ready to begin.

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

Selection: 12
  |                                                                               |   0%

| Whenever you're working with a new dataset, the first thing you should do is look at
| it! What is the format of the data? What are the dimensions? What are the variable
| names? How are the variables stored? Are there missing data? Are there any flaws in
| the data?

...
  |===                                                                            |   4%
| This lesson will teach you how to answer these questions and more using R's built-in
| functions. We'll be using a dataset constructed from the United States Department of
| Agriculture's PLANTS Database (http://plants.usda.gov/adv_search.html).

...
  |======                                                                         |   8%
| I've stored the data for you in a variable called plants. Type ls() to list the
| variables in your workspace, among which should be plants.

> ls()
[1] "cacheSolve"      "e"               "m"               "m2"             
[5] "makeCacheMatrix" "plants"          "x"               "y"              

| Excellent work!
  |=========                                                                      |  12%
| Let's begin by checking the class of the plants variable with class(plants). This will
| give us a clue as to the overall structure of the data.

> class(plants)
[1] "data.frame"

| Your dedication is inspiring!
  |=============                                                                  |  16%
| It's very common for data to be stored in a data frame. It is the default class for
| data read into R using functions like read.csv() and read.table(), which you'll learn
| about in another lesson.

...
  |================                                                               |  20%
| Since the dataset is stored in a data frame, we know it is rectangular. In other
| words, it has two dimensions (rows and columns) and fits neatly into a table or
| spreadsheet. Use dim(plants) to see exactly how many rows and columns we're dealing
| with.

> dim(plants)
[1] 5166   10

| Excellent job!
  |===================                                                            |  24%
| The first number you see (5166) is the number of rows (observations) and the second
| number (10) is the number of columns (variables).

...
  |======================                                                         |  28%
| You can also use nrow(plants) to see only the number of rows. Try it out.

> nrow(plants)
[1] 5166

| You are amazing!
  |=========================                                                      |  32%
| ... And ncol(plants) to see only the number of columns.

> ncol(plants)
[1] 10

| Keep working like that and you'll get there!
  |============================                                                   |  36%
| If you are curious as to how much space the dataset is occupying in memory, you can
| use object.size(plants).

> object.size(plants)
686080 bytes

| That's correct!
  |================================                                               |  40%
| Now that we have a sense of the shape and size of the dataset, let's get a feel for
| what's inside. names(plants) will return a character vector of column (i.e. variable)
| names. Give it a shot.

> names(plants)
 [1] "Scientific_Name"      "Duration"             "Active_Growth_Period"
 [4] "Foliage_Color"        "pH_Min"               "pH_Max"              
 [7] "Precip_Min"           "Precip_Max"           "Shade_Tolerance"     
[10] "Temp_Min_F"          

| All that practice is paying off!
  |===================================                                            |  44%
| We've applied fairly descriptive variable names to this dataset, but that won't always
| be the case. A logical next step is to peek at the actual data. However, our dataset
| contains over 5000 observations (rows), so it's impractical to view the whole thing
| all at once.

...
  |======================================                                         |  48%
| The head() function allows you to preview the top of the dataset. Give it a try with
| only one argument.

> head()
Error in head.default() : argument "x" is missing, with no default
> head(plants)
               Scientific_Name          Duration Active_Growth_Period Foliage_Color
1                  Abelmoschus              <NA>                 <NA>          <NA>
2       Abelmoschus esculentus Annual, Perennial                 <NA>          <NA>
3                        Abies              <NA>                 <NA>          <NA>
4               Abies balsamea         Perennial    Spring and Summer         Green
5 Abies balsamea var. balsamea         Perennial                 <NA>          <NA>
6                     Abutilon              <NA>                 <NA>          <NA>
  pH_Min pH_Max Precip_Min Precip_Max Shade_Tolerance Temp_Min_F
1     NA     NA         NA         NA            <NA>         NA
2     NA     NA         NA         NA            <NA>         NA
3     NA     NA         NA         NA            <NA>         NA
4      4      6         13         60        Tolerant        -43
5     NA     NA         NA         NA            <NA>         NA
6     NA     NA         NA         NA            <NA>         NA

| You nailed it! Good job!
  |=========================================                                      |  52%
| Take a minute to look through and understand the output above. Each row is labeled
| with the observation number and each column with the variable name. Your screen is
| probably not wide enough to view all 10 columns side-by-side, in which case R displays
| as many columns as it can on each line before continuing on the next.

...
  |============================================                                   |  56%
| By default, head() shows you the first six rows of the data. You can alter this
| behavior by passing as a second argument the number of rows you'd like to view. Use
| head() to preview the first 10 rows of plants.

> head(plants[10])
  Temp_Min_F
1         NA
2         NA
3         NA
4        -43
5         NA
6         NA

| You're close...I can feel it! Try it again. Or, type info() for more options.

| head(plants, 10) will show you the first 10 rows of the dataset.

> head(plants, 10)
                     Scientific_Name          Duration Active_Growth_Period
1                        Abelmoschus              <NA>                 <NA>
2             Abelmoschus esculentus Annual, Perennial                 <NA>
3                              Abies              <NA>                 <NA>
4                     Abies balsamea         Perennial    Spring and Summer
5       Abies balsamea var. balsamea         Perennial                 <NA>
6                           Abutilon              <NA>                 <NA>
7               Abutilon theophrasti            Annual                 <NA>
8                             Acacia              <NA>                 <NA>
9                  Acacia constricta         Perennial    Spring and Summer
10 Acacia constricta var. constricta         Perennial                 <NA>
   Foliage_Color pH_Min pH_Max Precip_Min Precip_Max Shade_Tolerance Temp_Min_F
1           <NA>     NA     NA         NA         NA            <NA>         NA
2           <NA>     NA     NA         NA         NA            <NA>         NA
3           <NA>     NA     NA         NA         NA            <NA>         NA
4          Green      4    6.0         13         60        Tolerant        -43
5           <NA>     NA     NA         NA         NA            <NA>         NA
6           <NA>     NA     NA         NA         NA            <NA>         NA
7           <NA>     NA     NA         NA         NA            <NA>         NA
8           <NA>     NA     NA         NA         NA            <NA>         NA
9          Green      7    8.5          4         20      Intolerant        -13
10          <NA>     NA     NA         NA         NA            <NA>         NA

| You are amazing!
  |===============================================                                |  60%
| The same applies for using tail() to preview the end of the dataset. Use tail() to
| view the last 15 rows.

> tail(plants, 15) 
                      Scientific_Name  Duration Active_Growth_Period Foliage_Color
5152                          Zizania      <NA>                 <NA>          <NA>
5153                 Zizania aquatica    Annual               Spring         Green
5154   Zizania aquatica var. aquatica    Annual                 <NA>          <NA>
5155                Zizania palustris    Annual                 <NA>          <NA>
5156 Zizania palustris var. palustris    Annual                 <NA>          <NA>
5157                      Zizaniopsis      <NA>                 <NA>          <NA>
5158             Zizaniopsis miliacea Perennial    Spring and Summer         Green
5159                            Zizia      <NA>                 <NA>          <NA>
5160                     Zizia aptera Perennial                 <NA>          <NA>
5161                      Zizia aurea Perennial                 <NA>          <NA>
5162                 Zizia trifoliata Perennial                 <NA>          <NA>
5163                          Zostera      <NA>                 <NA>          <NA>
5164                   Zostera marina Perennial                 <NA>          <NA>
5165                           Zoysia      <NA>                 <NA>          <NA>
5166                  Zoysia japonica Perennial                 <NA>          <NA>
     pH_Min pH_Max Precip_Min Precip_Max Shade_Tolerance Temp_Min_F
5152     NA     NA         NA         NA            <NA>         NA
5153    6.4    7.4         30         50      Intolerant         32
5154     NA     NA         NA         NA            <NA>         NA
5155     NA     NA         NA         NA            <NA>         NA
5156     NA     NA         NA         NA            <NA>         NA
5157     NA     NA         NA         NA            <NA>         NA
5158    4.3    9.0         35         70      Intolerant         12
5159     NA     NA         NA         NA            <NA>         NA
5160     NA     NA         NA         NA            <NA>         NA
5161     NA     NA         NA         NA            <NA>         NA
5162     NA     NA         NA         NA            <NA>         NA
5163     NA     NA         NA         NA            <NA>         NA
5164     NA     NA         NA         NA            <NA>         NA
5165     NA     NA         NA         NA            <NA>         NA
5166     NA     NA         NA         NA            <NA>         NA

| You are quite good my friend!
  |===================================================                            |  64%
| After previewing the top and bottom of the data, you probably noticed lots of NAs,
| which are R's placeholders for missing values. Use summary(plants) to get a better
| feel for how each variable is distributed and how much of the dataset is missing.

> summary(plants)
                     Scientific_Name              Duration   
 Abelmoschus                 :   1   Perennial        :3031  
 Abelmoschus esculentus      :   1   Annual           : 682  
 Abies                       :   1   Annual, Perennial: 179  
 Abies balsamea              :   1   Annual, Biennial :  95  
 Abies balsamea var. balsamea:   1   Biennial         :  57  
 Abutilon                    :   1   (Other)          :  92  
 (Other)                     :5160   NA's             :1030  
           Active_Growth_Period      Foliage_Color      pH_Min          pH_Max      
 Spring and Summer   : 447      Dark Green  :  82   Min.   :3.000   Min.   : 5.100  
 Spring              : 144      Gray-Green  :  25   1st Qu.:4.500   1st Qu.: 7.000  
 Spring, Summer, Fall:  95      Green       : 692   Median :5.000   Median : 7.300  
 Summer              :  92      Red         :   4   Mean   :4.997   Mean   : 7.344  
 Summer and Fall     :  24      White-Gray  :   9   3rd Qu.:5.500   3rd Qu.: 7.800  
 (Other)             :  30      Yellow-Green:  20   Max.   :7.000   Max.   :10.000  
 NA's                :4334      NA's        :4334   NA's   :4327    NA's   :4327    
   Precip_Min      Precip_Max         Shade_Tolerance   Temp_Min_F    
 Min.   : 4.00   Min.   : 16.00   Intermediate: 242   Min.   :-79.00  
 1st Qu.:16.75   1st Qu.: 55.00   Intolerant  : 349   1st Qu.:-38.00  
 Median :28.00   Median : 60.00   Tolerant    : 246   Median :-33.00  
 Mean   :25.57   Mean   : 58.73   NA's        :4329   Mean   :-22.53  
 3rd Qu.:32.00   3rd Qu.: 60.00                       3rd Qu.:-18.00  
 Max.   :60.00   Max.   :200.00                       Max.   : 52.00  
 NA's   :4338    NA's   :4338                         NA's   :4328    

| Nice work!
  |======================================================                         |  68%
| summary() provides different output for each variable, depending on its class. For
| numeric data such as Precip_Min, summary() displays the minimum, 1st quartile,
| median, mean, 3rd quartile, and maximum. These values help us understand how the
| data are distributed.

...
  |=========================================================                      |  72%
| For categorical variables (called 'factor' variables in R), summary() displays the
| number of times each value (or 'level') occurs in the data. For example, each value
| of Scientific_Name only appears once, since it is unique to a specific plant. In
| contrast, the summary for Duration (also a factor variable) tells us that our
| dataset contains 3031 Perennial plants, 682 Annual plants, etc.

...
  |============================================================                   |  76%
| You can see that R truncated the summary for Active_Growth_Period by including a
| catch-all category called 'Other'. Since it is a categorical/factor variable, we can
| see how many times each value actually occurs in the data with
| table(plants$Active_Growth_Period).

> table(plants$Active_Growth_Period)

Fall, Winter and Spring                  Spring         Spring and Fall 
                     15                     144                      10 
      Spring and Summer    Spring, Summer, Fall                  Summer 
                    447                      95                      92 
        Summer and Fall              Year Round 
                     24                       5 

| You are doing so well!
  |===============================================================                |  80%
| Each of the functions we've introduced so far has its place in helping you to better
| understand the structure of your data. However, we've left the best for last....

...
  |==================================================================             |  84%
| Perhaps the most useful and concise function for understanding the *str*ucture of
| your data is str(). Give it a try now.

> str(plants)
'data.frame':	5166 obs. of  10 variables:
 $ Scientific_Name     : Factor w/ 5166 levels "Abelmoschus",..: 1 2 3 4 5 6 7 8 9 10 ...
 $ Duration            : Factor w/ 8 levels "Annual","Annual, Biennial",..: NA 4 NA 7 7 NA 1 NA 7 7 ...
 $ Active_Growth_Period: Factor w/ 8 levels "Fall, Winter and Spring",..: NA NA NA 4 NA NA NA NA 4 NA ...
 $ Foliage_Color       : Factor w/ 6 levels "Dark Green","Gray-Green",..: NA NA NA 3 NA NA NA NA 3 NA ...
 $ pH_Min              : num  NA NA NA 4 NA NA NA NA 7 NA ...
 $ pH_Max              : num  NA NA NA 6 NA NA NA NA 8.5 NA ...
 $ Precip_Min          : int  NA NA NA 13 NA NA NA NA 4 NA ...
 $ Precip_Max          : int  NA NA NA 60 NA NA NA NA 20 NA ...
 $ Shade_Tolerance     : Factor w/ 3 levels "Intermediate",..: NA NA NA 3 NA NA NA NA 2 NA ...
 $ Temp_Min_F          : int  NA NA NA -43 NA NA NA NA -13 NA ...

| Excellent work!
  |======================================================================         |  88%
| The beauty of str() is that it combines many of the features of the other functions
| you've already seen, all in a concise and readable format. At the very top, it tells
| us that the class of plants is 'data.frame' and that it has 5166 observations and 10
| variables. It then gives us the name and class of each variable, as well as a
| preview of its contents.

...
  |=========================================================================      |  92%
| str() is actually a very general function that you can use on most objects in R. Any
| time you want to understand the structure of something (a dataset, function, etc.),
| str() is a good place to start.

...
  |============================================================================   |  96%
| In this lesson, you learned how to get a feel for the structure and contents of a
| new dataset using a collection of simple and useful functions. Taking the time to do
| this upfront can save you time and frustration later on in your analysis.

...
  |===============================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? manwarsan@gmail.com
What is your assignment token? RvknbQfs6JVNirVb
Grade submission succeeded!

| All that practice is paying off!

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

Selection: 13
  |                                                                             |   0%

| One of the great advantages of using a statistical programming language like R is
| its vast collection of tools for simulating random numbers.

...
  |==                                                                           |   3%
| This lesson assumes familiarity with a few common probability distributions, but
| these topics will only be discussed with respect to random number generation. Even
| if you have no prior experience with these concepts, you should be able to complete
| the lesson and understand the main ideas.

...
  |=====                                                                        |   6%
| The first function we'll use to generate random numbers is sample(). Use ?sample to
| pull up the documentation.

> ?sample
starting httpd help server ... done

| Great job!
  |=======                                                                      |   9%
| Let's simulate rolling four six-sided dice: sample(1:6, 4, replace = TRUE).

> sample(1:6, 4, replace = TRUE)
[1] 1 5 3 6

| Perseverance, that's the answer.
  |=========                                                                    |  12%
| Now repeat the command to see how your result differs. (The probability of rolling
| the exact same result is (1/6)^4 = 0.00077, which is pretty small!)

> sample(1:6, 4, replace = TRUE)
[1] 3 3 4 1

| You are really on a roll!
  |============                                                                 |  15%
| sample(1:6, 4, replace = TRUE) instructs R to randomly select four numbers between 1
| and 6, WITH replacement. Sampling with replacement simply means that each number is
| "replaced" after it is selected, so that the same number can show up more than once.
| This is what we want here, since what you roll on one die shouldn't affect what you
| roll on any of the others.

...
  |==============                                                               |  18%
| Now sample 10 numbers between 1 and 20, WITHOUT replacement. To sample without
| replacement, simply leave off the 'replace' argument.

> 
> sample(1:20, 10)
 [1] 12  9  2  4 18 19 15  7  1 13

| Excellent job!
  |================                                                             |  21%
| Since the last command sampled without replacement, no number appears more than once
| in the output.

...
  |===================                                                          |  24%
| LETTERS is a predefined variable in R containing a vector of all 26 letters of the
| English alphabet. Take a look at it now.

> LETTERS
 [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T"
[21] "U" "V" "W" "X" "Y" "Z"

| You nailed it! Good job!
  |=====================                                                        |  27%
| The sample() function can also be used to permute, or rearrange, the elements of a
| vector. For example, try sample(LETTERS) to permute all 26 letters of the English
| alphabet.

> sample(LETTERS)
 [1] "E" "Z" "L" "Q" "N" "K" "H" "P" "Y" "J" "X" "A" "R" "O" "V" "S" "W" "T" "I" "D"
[21] "U" "C" "G" "F" "M" "B"

| You got it right!
  |=======================                                                      |  30%
| This is identical to taking a sample of size 26 from LETTERS, without replacement.
| When the 'size' argument to sample() is not specified, R takes a sample equal in
| size to the vector from which you are sampling.

...
  |==========================                                                   |  33%
| Now, suppose we want to simulate 100 flips of an unfair two-sided coin. This
| particular coin has a 0.3 probability of landing 'tails' and a 0.7 probability of
| landing 'heads'.

...
  |============================                                                 |  36%
| Let the value 0 represent tails and the value 1 represent heads. Use sample() to
| draw a sample of size 100 from the vector c(0,1), with replacement. Since the coin
| is unfair, we must attach specific probabilities to the values 0 (tails) and 1
| (heads) with a fourth argument, prob = c(0.3, 0.7). Assign the result to a new
| variable called flips.

> flips<-sample(c(0,1), 100, replace=TRUE, prob=c(0.3, 0.7))

| Excellent job!
  |==============================                                               |  39%
| View the contents of the flips variable.

> flips
  [1] 1 1 0 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 0 1 0 0 1 1 1 0 0 0 0 1 1 1 1 1 1 1
 [42] 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 0 1 1 0 0 1 0 0 1 0 1 1 0 0 1 0 1 1 1 0
 [83] 0 1 1 1 0 0 1 1 1 0 1 0 1 0 1 0 0 1

| You are amazing!
  |=================================                                            |  42%
| Since we set the probability of landing heads on any given flip to be 0.7, we'd
| expect approximately 70 of our coin flips to have the value 1. Count the actual
| number of 1s contained in flips using the sum() function.

> sum(flips) 
[1] 64

| Keep up the great work!
  |===================================                                          |  45%
| A coin flip is a binary outcome (0 or 1) and we are performing 100 independent
| trials (coin flips), so we can use rbinom() to simulate a binomial random variable.
| Pull up the documentation for rbinom() using ?rbinom.

> rbinom(100)
Error in rbinom(100) : argument "size" is missing, with no default
> rbinom(c(0,1), 100)
Error in rbinom(c(0, 1), 100) : 
  argument "prob" is missing, with no default
> rbinom(prob=c(0,1), 100)
Error in rbinom(prob = c(0, 1), 100) : 
  argument "size" is missing, with no default
> rbinom(c(0,1), 100, replace=TRUE, prob=c(0.3, 0.7))
Error in rbinom(c(0, 1), 100, replace = TRUE, prob = c(0.3, 0.7)) : 
  unused argument (replace = TRUE)
> rbinom(c(0,1), 100, prob=c(0.3, 0.7))
[1] 30 63

| Not quite right, but keep trying. Or, type info() for more options.

| Type ?rbinom to pull up the help file for rbinom().

> ?rbinom

| You are really on a roll!
  |=====================================                                        |  48%
| Each probability distribution in R has an r*** function (for "random"), a d***
| function (for "density"), a p*** (for "probability"), and q*** (for "quantile"). We
| are most interested in the r*** functions in this lesson, but I encourage you to
| explore the others on your own.

...
  |========================================                                     |  52%
| A binomial random variable represents the number of 'successes' (heads) in a given
| number of independent 'trials' (coin flips). Therefore, we can generate a single
| random variable that represents the number of heads in 100 flips of our unfair coin
| using rbinom(1, size = 100, prob = 0.7). Note that you only specify the probability
| of 'success' (heads) and NOT the probability of 'failure' (tails). Try it now.

> rbinom(1, size = 100, prob = 0.7)
[1] 67

| Nice work!
  |==========================================                                   |  55%
| Equivalently, if we want to see all of the 0s and 1s, we can request 100
| observations, each of size 1, with success probability of 0.7. Give it a try,
| assigning the result to a new variable called flips2.

> flips2<-rbinom(1, size = 100, prob = 0.7)

| You almost had it, but not quite. Try again. Or, type info() for more options.

| Call rbinom() with n = 100, size = 1, and prob = 0.7 and assign the result to
| flips2.

> flips2<-rbinom(n=100, size = 1, prob = 0.7)

| Keep working like that and you'll get there!
  |============================================                                 |  58%
| View the contents of flips2.

> flips2
  [1] 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 1 1 0 0 1 0 1 1 1 1 1 0 1 1
 [42] 1 1 1 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1
 [83] 0 1 0 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1

| You are really on a roll!
  |===============================================                              |  61%
| Now use sum() to count the number of 1s (heads) in flips2. It should be close to 70!

> sum(flips2)
[1] 74

| Your dedication is inspiring!
  |=================================================                            |  64%
| Similar to rbinom(), we can use R to simulate random numbers from many other
| probability distributions. Pull up the documentation for rnorm() now.

> rnorm(100, size=1, prob=0.7)
Error in rnorm(100, size = 1, prob = 0.7) : 
  unused arguments (size = 1, prob = 0.7)
> rnorm()
Error in rnorm() : argument "n" is missing, with no default
> rnorm(n=100, size=1, prob=0.7)
Error in rnorm(n = 100, size = 1, prob = 0.7) : 
  unused arguments (size = 1, prob = 0.7)
> rnorm(flips2)
  [1] -0.248964680  2.622751684 -1.031959442 -0.336445344 -0.078662512  1.730517864
  [7]  1.376948594  0.939458463 -0.601650159  1.084786719 -1.666824766  0.353330676
 [13]  0.667827881  0.114983596 -0.508006724 -0.905694441  0.381691722  0.921141770
 [19]  0.228260129 -0.198614550  0.836682747 -0.007104391 -0.143361428 -1.035630159
 [25] -0.045793061 -1.085046368  0.976939970  0.790237813  0.984686182  1.728021554
 [31] -0.125903610  2.534352994 -0.433062723  0.054480986  0.212408348 -0.899383609
 [37] -1.375653610 -0.720000348  0.571032999 -2.227976415 -0.460671935  0.280351497
 [43]  1.219891626  0.495607342 -0.740539511  0.103867933  0.778185135 -0.350343548
 [49] -1.184899952 -0.549069481 -0.350416225 -0.033102280 -0.387941596 -0.480370264
 [55] -0.318295679 -0.893724038  1.021595570  0.358959231  1.253875555  0.706133721
 [61] -1.947212627 -0.117079331  0.178541399 -0.883267294 -0.807575171  0.101003431
 [67]  1.464123094 -0.105477125 -1.791535203  0.543513014  0.314092702  0.506640133
 [73] -0.865841647  2.708182060 -0.886111487  0.520698008 -1.231734428  0.804052329
 [79]  1.172196906  0.806552501 -1.723567124 -0.145796497 -1.803579115 -0.236005878
 [85] -1.182943473 -0.072347259  0.128783463  1.972929865 -0.071548470  0.662564612
 [91] -0.021996069 -0.316477912  0.002216812  0.518168763  1.052712115  1.860744440
 [97] -0.572562971 -1.116260285 -0.943473638 -2.224035530

| That's not the answer I was looking for, but try again. Or, type info() for more
| options.

| Type ?rnorm to view its help file.

> ?rnorm

| Your dedication is inspiring!
  |===================================================                          |  67%
| The standard normal distribution has mean 0 and standard deviation 1. As you can see
| under the 'Usage' section in the documentation, the default values for the 'mean'
| and 'sd' arguments to rnorm() are 0 and 1, respectively. Thus, rnorm(10) will
| generate 10 random numbers from a standard normal distribution. Give it a try.

> rnorm(10)
 [1]  0.0643528 -0.5912604  1.2325970  0.5017936 -0.6855142 -1.2402286 -0.4390460
 [8]  0.9246539  0.4899999 -0.1252046

| That's a job well done!
  |======================================================                       |  70%
| Now do the same, except with a mean of 100 and a standard deviation of 25.

> rnorm(10, mean=100, sd=25)
 [1]  64.93973 103.91926 121.68771  99.16912 123.85161 128.25242 109.84243 109.42021
 [9]  93.70643 112.60237

| Excellent work!
  |========================================================                     |  73%
| Finally, what if we want to simulate 100 *groups* of random numbers, each containing
| 5 values generated from a Poisson distribution with mean 10? Let's start with one
| group of 5 numbers, then I'll show you how to repeat the operation 100 times in a
| convenient and compact way.

...
  |==========================================================                   |  76%
| Generate 5 random values from a Poisson distribution with mean 10. Check out the
| documentation for rpois() if you need help.

> ?rpois
> rpois(5, 10)
[1] 11 16 16  7 13

| Excellent work!
  |=============================================================                |  79%
| Now use replicate(100, rpois(5, 10)) to perform this operation 100 times. Store the
| result in a new variable called my_pois.

> my_pois <- replicate(100, rpois(5, 10))

| Excellent job!
  |===============================================================              |  82%
| Take a look at the contents of my_pois.

> my_pois
     [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11] [,12] [,13] [,14] [,15]
[1,]    6   20   18   14   14    7   15    9   16    10     6     7     8    17    12
[2,]   11    8    7    8   13    7    8    8    5     9    16     7     7     9    11
[3,]    7   12   12   11   10    9    3    9   12    10     8    15    10     7     8
[4,]    5    7    9   12    5    7    8   10   11    11     4     9     7     8    14
[5,]    4   13   10   12   12    5   13   10   16     6    10    15     6     7     6
     [,16] [,17] [,18] [,19] [,20] [,21] [,22] [,23] [,24] [,25] [,26] [,27] [,28]
[1,]    12    22     8     8     9    19     8     7    14    11    12    13    11
[2,]    10    12     5    11    10     8     8    10     3    11     9     5    11
[3,]     8     8    12     7     8    13     6    11    11     5     7     9     8
[4,]    12     4     7    11    11     7    18     3     7     7     6     8    14
[5,]     8     9    10    13    10    16     8    15    11    13     4     6     7
     [,29] [,30] [,31] [,32] [,33] [,34] [,35] [,36] [,37] [,38] [,39] [,40] [,41]
[1,]     6     8    12     5     7    13     3    11    11    11     7    10    11
[2,]    12     7    10     5     8    12     6     6     9    13     6    12    10
[3,]    12    13     9    15     8    13     5    17    14     9    10     7     8
[4,]    10     9     9    10    12    10     8    13     8    12    14    11    11
[5,]     5    10    10    12    13    11     8    11     9     8    14    10    15
     [,42] [,43] [,44] [,45] [,46] [,47] [,48] [,49] [,50] [,51] [,52] [,53] [,54]
[1,]    12    11    11    12     7    11     9    11    16    13     5     9     6
[2,]     9     9     9    11    12     9     6     8     8    17     9    10    13
[3,]    11     8     6     7     8     6    11    12    10     4    12     7    10
[4,]     9     9    13    10     7    10     9     9    12    14     5    10    12
[5,]     7     6    12    11    13     9    12    10    11    13    12     5    13
     [,55] [,56] [,57] [,58] [,59] [,60] [,61] [,62] [,63] [,64] [,65] [,66] [,67]
[1,]     9    11     9     8    12    11    14    10     9     7    16    13    14
[2,]     9     7     5    12    10    11    11    12    10    14    14    11    13
[3,]    12    11    15     8    15    16     9    10    20     4    11     8     7
[4,]    11     4    10    16     7    13     8     7     8     6    13    10     8
[5,]     8     8     9     8    12    12    10    11     4    14    11    12     9
     [,68] [,69] [,70] [,71] [,72] [,73] [,74] [,75] [,76] [,77] [,78] [,79] [,80]
[1,]    13    12    11    19    11    10     8    10     6     9     9     9     6
[2,]     7    10    14     8    12     8     7    12    15    13    10     9     7
[3,]    10    11    14     8    11     7     8    15     5    10     8     7     6
[4,]    12    13    10    13    14    11     7    12    10    10    13     9    14
[5,]     9     9     8    15     8    10     5     9     9    12     6     8     4
     [,81] [,82] [,83] [,84] [,85] [,86] [,87] [,88] [,89] [,90] [,91] [,92] [,93]
[1,]    11    13    14     6     8     6    12    10     8    11    13     5    16
[2,]     9     5    12    13    13    10    11    13     9     7     8     8     6
[3,]     8    15    14    11    10    15    13     8     6    11     9    14    14
[4,]     8    12    12     6    13     5     9     6     5    16    12    10    10
[5,]     7    13    10    12     8     8     7     8     8    11    22    14    15
     [,94] [,95] [,96] [,97] [,98] [,99] [,100]
[1,]    12     9     9     8     7    12      6
[2,]    17     6     6     5    13    13     11
[3,]    11    14    13     7     5     7     12
[4,]     4    11    18    14     6     9      8
[5,]    17     6     8    10    16    13     10

| Keep up the great work!
  |=================================================================            |  85%
| replicate() created a matrix, each column of which contains 5 random numbers
| generated from a Poisson distribution with mean 10. Now we can find the mean of each
| column in my_pois using the colMeans() function. Store the result in a variable
| called cm.

> cm <- colMeans(my_pois)

| Your dedication is inspiring!
  |====================================================================         |  88%
| And let's take a look at the distribution of our column means by plotting a
| histogram with hist(cm).

> ist(cm)
Error in ist(cm) : could not find function "ist"
> hist(cm)

| That's correct!
  |======================================================================       |  91%
| Looks like our column means are almost normally distributed, right? That's the
| Central Limit Theorem at work, but that's a lesson for another day!

...
  |========================================================================     |  94%
| All of the standard probability distributions are built into R, including
| exponential (rexp()), chi-squared (rchisq()), gamma (rgamma()), .... Well, you see
| the pattern.

...
  |===========================================================================  |  97%
| Simulation is practically a field of its own and we've only skimmed the surface of
| what's possible. I encourage you to explore these and other functions further on
| your own.

...
  |=============================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? manwarsan@gmail.com
What is your assignment token? kEGHo6ArVoauKOli
Grade submission succeeded!

| You are quite good my friend!

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

Selection: 15
  |                                                                             |   0%

| One of the greatest strengths of R, relative to other programming languages, is the
| ease with which we can create publication-quality graphics. In this lesson, you'll
| learn about base graphics in R.

...
  |==                                                                           |   2%
| We do not cover the more advanced portions of graphics in R in this lesson. These
| include lattice, ggplot2 and ggvis.

...
  |===                                                                          |   4%
| There is a school of thought that this approach is backwards, that we should teach
| ggplot2 first. See http://varianceexplained.org/r/teach_ggplot2_to_beginners/ for an
| outline of this view.

...
  |=====                                                                        |   7%
| Load the included data frame cars with data(cars).

> data(cars)

| You are amazing!
  |=======                                                                      |   9%
| To fix ideas, we will work with simple data frames. Our main goal is to introduce
| various plotting functions and their arguments. All the output would look more
| interesting with larger, more complex data sets.

...
  |========                                                                     |  11%
| Pull up the help page for cars.

> ?cars

| All that hard work is paying off!
  |==========                                                                   |  13%
| As you can see in the help page, the cars data set has only two variables: speed and
| stopping distance. Note that the data is from the 1920s.

...
  |============                                                                 |  15%
| Run head() on the cars data.

> head(data) 
                                                                     
1 function (..., list = character(), package = NULL, lib.loc = NULL, 
2     verbose = getOption("verbose"), envir = .GlobalEnv)            
3 {                                                                  
4     fileExt <- function(x) {                                       
5         db <- grepl("\\\\.[^.]+\\\\.(gz|bz2|xz)$", x)              
6         ans <- sub(".*\\\\.", "", x)                               

| Not exactly. Give it another go. Or, type info() for more options.

| Type head(cars) to see the top of the cars data frame.

> head(cars) 
  speed dist
1     4    2
2     4   10
3     7    4
4     7   22
5     8   16
6     9   10

| Your dedication is inspiring!
  |=============                                                                |  17%
| Before plotting, it is always a good idea to get a sense of the data. Key R commands
| for doing so include, dim(), names(), head(), tail() and summary().

...
  |===============                                                              |  20%
| Run the plot() command on the cars data frame.

> plot(cars)

| Excellent work!
  |=================                                                            |  22%
| As always, R tries very hard to give you something sensible given the information
| that you have provided to it. First, R notes that the data frame you have given it
| has just two columns, so it assumes that you want to plot one column versus the
| other.

...
  |==================                                                           |  24%
| Second, since we do not provide labels for either axis, R uses the names of the
| columns. Third, it creates axis tick marks at nice round numbers and labels them
| accordingly. Fourth, it uses the other defaults supplied in plot().

...
  |====================                                                         |  26%
| We will now spend some time exploring plot, but many of the topics covered here will
| apply to most other R graphics functions. Note that 'plot' is short for scatterplot.

...
  |======================                                                       |  28%
| Look up the help page for plot().

> ?plot

| You are amazing!
  |=======================                                                      |  30%
| The help page for plot() highlights the different arguments that the function can
| take. The two most important are x and y, the variables that will be plotted. For
| the next set of questions, include the argument names in your answers. That is, do
| not type plot(cars$speed, cars$dist), although that will work. Instead, use plot(x =
| cars$speed, y = cars$dist).

...
  |=========================                                                    |  33%
| Use plot() command to show speed on the x-axis and dist on the y-axis from the cars
| data frame. Use the form of the plot command in which vectors are explicitly passed
| in as arguments for x and y.

> plot(x=cars$speed, y=cars$dist)

| All that hard work is paying off!
  |===========================                                                  |  35%
| Note that this produces a slightly different answer than plot(cars). In this case, R
| is not sure what you want to use as the labels on the axes, so it just uses the
| arguments which you pass in, data frame name and dollar signs included.

...
  |============================                                                 |  37%
| Note that there are other ways to call the plot command, i.e., using the "formula"
| interface. For example, we get a similar plot to the above with plot(dist ~ speed,
| cars). However, we will wait till later in the lesson before using the formula
| interface.

...
  |==============================                                               |  39%
| Use plot() command to show dist on the x-axis and speed on the y-axis from the cars
| data frame. This is the opposite of what we did above.

> plot(dist ~ speed, cars)

| Not quite, but you're learning! Try again. Or, type info() for more options.

| Type plot(x = cars$dist, y = cars$speed) to create the plot.

> plot(x = cars$dist, y = cars$speed) 

| Excellent job!
  |================================                                             |  41%
| It probably makes more sense for speed to go on the x-axis since stopping distance
| is a function of speed more than the other way around. So, for the rest of the
| questions in this portion of the lesson, always assign the arguments accordingly.

...
  |=================================                                            |  43%
| In fact, you can assume that the answers to the next few questions are all of the
| form plot(x = cars$speed, y = cars$dist, ...) but with various arguments used in
| place of the ...

...
  |===================================                                          |  46%
| Recreate the plot with the label of the x-axis set to "Speed".

> plot(x = cars$speed, y = cars$dist) 

| Not exactly. Give it another go. Or, type info() for more options.

| Type plot(x = cars$speed, y = cars$dist, xlab = "Speed") to create the plot.

> plot(x = cars$speed, y = cars$dist, xlab = "Speed") 

| That's correct!
  |=====================================                                        |  48%
| Recreate the plot with the label of the y-axis set to "Stopping Distance".

> plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab="Stopping Distance") 

| Not quite, but you're learning! Try again. Or, type info() for more options.

| Type plot(x = cars$speed, y = cars$dist, ylab = "Stopping Distance") to create the
| plot.

> plot(x = cars$speed, y = cars$dist, ylab = "Stopping Distance") 

| Perseverance, that's the answer.
  |======================================                                       |  50%
| Recreate the plot with "Speed" and "Stopping Distance" as axis labels.

> plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab="Stopping Distance") 

| Excellent job!
  |========================================                                     |  52%
| The reason that plots(cars) worked at the beginning of the lesson was that R was
| smart enough to know that the first element (i.e., the first column) in cars should
| be assigned to the x argument and the second element to the y argument. To save on
| typing, the next set of answers will all be of the form, plot(cars, ...) with
| various arguments added.

...
  |==========================================                                   |  54%
| For each question, we will only want one additional argument at a time. Of course,
| you can pass in more than one argument when doing a real project.

...
  |============================================                                 |  57%
| Plot cars with a main title of "My Plot". Note that the argument for the main title
| is "main" not "title".

> plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab="Stopping Distance", main="My Plot") 

| Not quite, but you're learning! Try again. Or, type info() for more options.

| Type plot(cars, main = "My Plot") to create the plot.

> plot(cars, main = "My Plot")

| That's correct!
  |=============================================                                |  59%
| Plot cars with a sub title of "My Plot Subtitle".

> plot(cars, main = "My Plot", sub="My Plot Subtitle")

| Give it another try. Or, type info() for more options.

| Type plot(cars, sub = "My Plot Subtitle") to create the plot.

> plot(cars, sub = "My Plot Subtitle") 

| Your dedication is inspiring!
  |===============================================                              |  61%
| The plot help page (?plot) only covers a small number of the many arguments that can
| be passed in to plot() and to other graphical functions. To begin to explore the
| many other options, look at ?par. Let's look at some of the more commonly used ones.
| Continue using plot(cars, ...) as the base answer to these questions.

...
  |=================================================                            |  63%
| Plot cars so that the plotted points are colored red. (Use col = 2 to achieve this
| effect.)

> plot(cars, col=2) 

| Excellent work!
  |==================================================                           |  65%
| Plot cars while limiting the x-axis to 10 through 15.  (Use xlim = c(10, 15) to
| achieve this effect.)

> plot(cars, xlim = c(10, 15)) 

| That's correct!
  |====================================================                         |  67%
| You can also change the shape of the symbols in the plot. The help page for points
| (?points) provides the details.

...
  |======================================================                       |  70%
| Plot cars using triangles.  (Use pch = 2 to achieve this effect.)

> ?points
> points(cars, pch=2)

| Not exactly. Give it another go. Or, type info() for more options.

| Type plot(cars, pch = 2) to create the plot.

> plot(cars, pch = 2)

| All that hard work is paying off!
  |=======================================================                      |  72%
| Arguments like "col" and "pch" may not seem very intuitive. And that is because they
| aren't! So, many/most people use more modern packages, like ggplot2, for creating
| their graphics in R.

...
  |=========================================================                    |  74%
| It is, however, useful to have an introduction to base graphics because many of the
| idioms in lattice and ggplot2 are modeled on them.

...
  |===========================================================                  |  76%
| Let's now look at some other functions in base graphics that may be useful, starting
| with boxplots.

...
  |============================================================                 |  78%
| Load the mtcars data frame.

> data(mtcars)

| That's the answer I was looking for.
  |==============================================================               |  80%
| Anytime that you load up a new data frame, you should explore it before using it. In
| the middle of a swirl lesson, just type play(). This temporarily suspends the lesson
| (without losing the work you have already done) and allows you to issue commands
| like dim(mtcars) and head(mtcars). Once you are done examining the data, just type
| nxt() and the lesson will pick up where it left off.

...
  |================================================================             |  83%
| Look up the help page for boxplot().

> ?boxplot

| You're the best!
  |=================================================================            |  85%
| Instead of adding data columns directly as input arguments, as we did with plot(),
| it is often handy to pass in the entire data frame. This is what the "data" argument
| in boxplot() allows.

...
  |===================================================================          |  87%
| boxplot(), like many R functions, also takes a "formula" argument, generally an
| expression with a tilde ("~") which indicates the relationship between the input
| variables. This allows you to enter something like mpg ~ cyl to plot the
| relationship between cyl (number of cylinders) on the x-axis and mpg (miles per
| gallon) on the y-axis.

...
  |=====================================================================        |  89%
| Use boxplot() with formula = mpg ~ cyl and data = mtcars to create a box plot.

> boxplot(mtcars, mpg ~ cyl )

| Give it another try. Or, type info() for more options.

| Type boxplot(formula = mpg ~ cyl, data = mtcars) to create the plot.

> boxplot(formula = mpg ~ cyl, data = mtcars)

| Great job!
  |======================================================================       |  91%
| The plot shows that mpg is much lower for cars with more cylinders. Note that we can
| use the same set of arguments that we explored with plot() above to add axis labels,
| titles and so on.

...
  |========================================================================     |  93%
| When looking at a single variable, histograms are a useful tool. hist() is the
| associated R function. Like plot(), hist() is best used by just passing in a single
| vector.

...
  |==========================================================================   |  96%
| Use hist() with the vector mtcars$mpg to create a histogram.

> hist(mtcars$mpg)

| You are really on a roll!
  |===========================================================================  |  98%
| In this lesson, you learned how to work with base graphics in R. The best place to
| go from here is to study the ggplot2 package. If you want to explore other elements
| of base graphics, then this web page
| (http://www.ling.upenn.edu/~joseff/rstudy/week4.html) provides a useful overview.

...
  |=============================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: No
2: Yes

Selection: 2
What is your email address? manwarsan@gmail.com
What is your assignment token? 44E0HggUFcviHSLy
Grade submission succeeded!

| You nailed it! Good job!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 2

| OK. I'm opening the swirl courses web page in your browser.

| Leaving swirl now. Type swirl() to resume.

> 
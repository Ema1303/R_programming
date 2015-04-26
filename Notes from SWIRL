##SWIRL - study notes

#1. Working with variables in my working environment 
remove(list=ls()) - tremove variables from your working environment
getwd() - get current working directory
ls() - list variables in workspace
dir() - list all files in my working directory
args(function_name) - which arguments does a function take
dir.create("name") - create directory
setwd("name_of_directory") - set the working directory
file.create("name.R") - create R file
file.exists("name.R") - does a file exist?
file.rename("name1", "name2") - rename a file
file.remove() - remove a file
file.copy("name1","name2") - copy a file
file.path() - find the path of a file
unlink("name", recursive=TRUE) - delete directory

##Some examples:
Example 1
Create a directory in the current working directory called "testdir2" and a subdirectory for it called "testdir3", 
all in one command by using dir.create() and file.path():

Slution
dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE)

#2. Lists 
1:10 - sequence from 1 to 10
seq(1,10,by=0.5) - creates a sequence from q to 10 in steps of 0.5 
length(variable) - check how many elements a variable holds

##Some examples
Example 1
I need a new sequence which is as long as my_sequence (i do not know how many elements it holds)

Solution
1:length(my_seq)
OR
seq(along.with = my_seq)
OR
seq_along(my_seq)

Example 2
I want t create a vector with 40 zeros

Solution
rep(0, times=40) where rep stands for replicate

Example 3
I want to repeat each elements of a vector 10 times

Solution
rep(c(0,1,2), each=10)
(I will get 10 times 0, 10 times 1, 10 times 2)


#3. VECTORS
my_name <- c("My", "name", "is") - create a vector holding 3 elements
paste(my_name, collapse = " ")
"My name is" - paste(, collapse) turns a vector length 3 into a character vector of length 1
sample(c(x,y), 100) - select 100 elements at random from vectors x and y
is.na(my_data) finds all NA elements in my_data and returns TRUE if it finds them
NA - not available
NaN - not a number

##Some examples
Example 1
If x vector has 40 elements and I want to read first 10

Solution
x[1:10]

Example 2
I want to know only 3 and 5th element of a vector

Solution
x[c(3,5)]

Example 3
I want to know all elements except 3 and 5th

Solution
x[c(-3,-5)]
OR
x[-c(3,5)]

Example 4
Create a vector with named elements

Solution
vect <- c(foo=11,bar=2,norf=NA)
It prints like this
foo  bar norf 
  11    2   NA

Example 5
Get the names of elements

Solution
names(vect)
[1] "foo"  "bar"  "norf"

Explanation:
to an unnamed vector you can add names likes this:
names(vect2) <- c("foo", "bar", "norf")

#4. MATRICES
Matrices can only contain a single class of data, while data frames can consist of many different classes of data

my_vector <- 1:20
dim(my_vector) <- c(4,5)
I create a matrix with 4 rows and 5 columns

class(my_vector) - which class is my_vector? matrix
OR
my_matrix2<-matrix(1:20, nrow=4, ncol=5)

##ADD NAMES TO ROWS
cbind() function to 'combine columns'
patients <- c("Bill", "Gina","Kelly","Sean")
cbind(patients,my_matrix) where my_matrix holds numbers from 1:20
Now my resulting matrix holds characters

patients                       
[1,] "Bill"   "1" "5" "9"  "13" "17"
[2,] "Gina"   "2" "6" "10" "14" "18"
[3,] "Kelly"  "3" "7" "11" "15" "19"
[4,] "Sean"   "4" "8" "12" "16" "20"

I did not want this -> implicit coercion (I did not ask for this conversion, it just happened)
How can I include names of patients without destroying the integrity of numerical data?
my_data <- data.frame(patients, my_matrix)

##ADD NAMES TO COLUMNS
cnames <- c("patient", "age", "weight", "bp", "rating", "test")
colnames(my_data) <- cnames

##5. LOGICAL VALUES
`&` operator evaluates AND across a vector. The `&&` version of AND only evaluates the first member of a vector
which(ints>7) - which indices are greater than 7








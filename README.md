## Synopsis

This package uses a graph theoritical apporach to unfold the relationships of choices and define the weightage to choices and lable them as need and wants.

## Motivation

This package can help users to make decision to identify the wants and needs.

## Code Example
```
#Install the devtools and load the devtools package
install.packages("devtools")
library(devtools)

#Install the package to your computer
install_github("gitrays/pdmk")

#Load the package in your R enviroment
library(pdmk)

#Let's create an adjancancy matrix which has 5 choices: A, B, C, D, E
z <- c(0,1,1,0,1,
       0,0,0,1,0,
       1,1,0,1,0,
       1,0,1,0,1,
       0,0,1,0,1)
mat <- matrix(z, nrow = 5)
colnames(mat) <- c('A', 'B', 'C', 'D', 'E')

#Run the need vs want function
net <- nvw(mat)

#Extract the need-weight assigned to choices
net$need

#Extract the want-weight assigned to choices
net$want

#Extract the total-weight assigned to choices
net$degree
```

## Contributors

Interesting discussion with Shishir Shakya.

## License

GPL-2

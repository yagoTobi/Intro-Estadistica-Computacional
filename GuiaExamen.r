

# ! - ESTRUCTURA EXAMEN: 
# * 5 puntos test (diapositiva)
# * 2 puntos de código (prácticas)
# * 3 puntos de desarrollar


# ! ##############################
# ! - Código del temario        ##
# ! ##############################

# * R cheatsheet: https://www.rstudio.com/resources/cheatsheets

# ? - Dotplot and lines: 
plot(x) 
plot(x, type='l')

# ? - Scatterplots: 
plot(x, y, xlab='x-axis', ylab='y-axis', main='Plot of X vs. Y')

# ? - Histogram: 
hist(x, main='Histogram title', xlab='x-axis')

# ? - Boxplots: 
boxplot(x, main='Boxplot title', ylab= 'y-axis')

# ? - For loop 
n = 10
log.vec = vector(length=n, mode="numeric")
for (i in 1:n) {
    log.vec[i] = log(i)
}
log.vec

# ? - Breaking the for loop
n = 10
log.vec = vector(length=n, mode="numeric")
for (i in 1:n) {
    if (log(i) > 2 {
        break
    }
    log.vec[i] = log(i)
}

log.vec

# ? - For loops - Non-numeric counter: Counter var iterate over a non-numeric vector
for (str in c("Prof", "Ryan", "Tibs")) {
    cat(paste(str, "declined to comment\n"))
}

# ? - Nested loops: 
for (i in 1:4){
    for (j in 1:i^2){
        cat(paste(j, ""))
    }
    cat('\n')
}

# ? - While loop
i = 1
log.vec = c()
while (log(i) <= 2) {
    log.vec = c(log.vec, log(i))
    i = i+1
}
log.vec

# ? - Infinite while loop -> Repeat
repeat {
    ans = readline("Who is the best Professor of Statistics at ICAI? ")
    if (ans == “Jaime Pizarroso" || ans == “Jaime") {
        cat("Yes! You get a 10.")
        break
    }
    else {
        cat("Wrong answer!\n")
    }
}

# ? - Apply functions - Allow you to apply a function across different chunks of data. 
apply()  # Apply a function to any dimension of a matrix, data.frame or array 
lapply() # Apply a function to elements of a list or vector 
sapply() # same as the above, but simplify the output
tapply() # apply a function to levels of a factor vector

# ? Example: 
apply(state.x77, MARGIN=2, FUN=function(v) {
    q1 = quantile(v, prob=0.1)
    q2 = quantile(v, prob=0.9)
    return(mean(v[q1 <= v & v <= q2]))
})

# ? - MARGIN = 1 will apply the function to rows 
# ? - MARGIN = 2 will apply the function to columns 
apply(state.x77, MARGIN=2, FUN=function(v, p1, p2) 
    {
        q1 = quantile(v, prob=p1)
        q2 = quantile(v, prob=p2)
        return(mean(v[q1 <= v & v <= q2]))
    }, p1=0.01, p2=0.99) # ? Pass the parameters directly 

# * ggplot2 cheatsheet: 
ggplot(data) + geom_point(aes(x=F, y=A, color = F, size = A))

# ? - ggplot(data): Begin the ggplot graphics using data as the dataset 
# ? - geom_point(): Add points to the graph
# ? - aes(): Defines the aesthetic properties: 
# ? - x = F. The x coordinates of the points are given by variable F of data. 
# ? - y = A. The y coordinates of the points are given by variable A of data. 
# ? - color = F. Define the color 
# ? - size = A. The size of the points are given by the values of variable A of data. 

ggpairs(data, aes=(color=var, alpha = 0.4))

# ! ##############################
# ! - Lab 0 - Introduction to R ##
# ! ##############################

# * Obtener datos 
data1 <- read.table("Simdata1.csv",sep=";",header=TRUE) # Regression

# * Generate a binomial distribution
bin_var <- rbinom(n = 20, size = 10, prob = 0.5)
# ? Definition
# ? n -> number of values
# ? size is the num of trials
# ? prob of success

# * Get the values from a vector:
print(bin_var[10]) # ? Indexing
print(bin_var[1:10]) # ? Range of indices
print(bin_var[bin_var > 5]) # ? Using logical indexing
print(bin_var[-2]) # ? From the back to the front
print(which(bin_var > 4)) # ? Returns indices for verified conditions

# * How to concatenate strings with vars 
cat("For p=0.2, the mean is:", mean(bin.draws.0.2), " and the standard deviation is:", sd(bin.draws.0.2), "\n")

# * Place it all in a vector: 
var_names <- c('bin.draws.0.2', 'bin.draws.0.3', 'bin.draws.0.4')

# * Initialise a numeric vector:
mean_variables <- numeric(7)

# * For loops: 
i <- 1
# Populate with means of the 7 probability distributions
for (name in variable_names) {
  current_variable <- get(name)
  mean_variables[i] <- mean(current_variable)
  i <- i + 1
}
i <- 1

# * Create a scatter plot: 
probabilities <- c(0.2,0.3,0.4,0.5,0.6,0.7,0.8)

# Scatter plot of Means
# ? - Probabilities - x axis, mean - y axis
plot(probabilities, mean_variables,
               main = "Mean of Normal Distributions with varying probability of success",
               xlab = "Probabilities",
               ylab = "Mean",
               col = "blue",        # Set color of points
               pch = 16,            # Set point character
               cex = 1.5,           # Set point size
              
)

# * Create a matrix using cbind: 
bin.matrix <- cbind(
  bin.draws.0.2, # ? - Each of these are already vectors
  bin.draws.0.3, # ? - Each one represents a column
  bin.draws.0.4,
  bin.draws.0.5,
  bin.draws.0.6,
  bin.draws.0.7,
  bin.draws.0.8
)

# * Matrix properties: 
# First 5 rows
print(head(bin.matrix,5))

# 66th row and 5th column
cat("The element in the 66th row and 5th column is:",bin.matrix[66,5])
# Largest element in first column
cat("The largest element in the first column is:",max(bin.matrix[,1]))

# ? Calculate the column means for all the matrix: 
matrix_column_means <- colMeans(bin.matrix)

# ? Calculate the row means for all the matrix: 
matrix_row_means <- rowMeans(bin.matrix.T)

# * Comparison of matrices: 
cat("Using identical():",identical(matrix_column_means,mean_variables))

# * Transpose a Matrix: 
bin.matrix.T <- t(bin.matrix)


# Inputs
#inputs <- readLines('stdin')
inputs <- readLines("Day_0-inputs-02.txt")
number_of_elements <- as.numeric( inputs[1] )
elements <- as.numeric( strsplit(inputs[2], split = " ")[[1]] )
weights <- as.numeric( strsplit(inputs[3], split = " ")[[1]] )

#Calculate weighted mean
weighted_mean <- round(weighted.mean(elements, weights), digits=1)

# Outputs
cat(weighted_mean, '\n')


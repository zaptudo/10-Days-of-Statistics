# Inputs
file <- file("Day_0-inputs-02.txt", "r")
number_of_elements <- readLines(file, n = 1)
elements <- strsplit(readLines(file, n = 1), ' ')
weights <- strsplit(readLines(file, n = 1), ' ')


weighted_mean <- weighted.mean(elements, weights)

# Outputs
cat(weighted_mean, '\n')
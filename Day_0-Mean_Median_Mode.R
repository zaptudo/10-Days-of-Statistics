# Inputs
inputs <- scan(file = "inputs.txt")
number_of_elements <- inputs[1]
elements <- inputs[2:length(inputs)]

# Calculate Mean
meanCalcutated <- round(mean(elements), digits = 1)

# Calculate Median
medianCalcutated <- round(median(elements), digits = 1)

# Calculate Mode                 
frequences <- table(elements)
frequencesOrdered <- sort(frequences, decreasing = TRUE)
if (frequencesOrdered[1] > frequencesOrdered[2]) {
  modeCalcutated <- as.numeric(names(which.max(frequences)))
} else {
  modeCalcutated <- min(as.numeric(names(frequences[which(frequences == frequencesOrdered[1])])))
}

# Outputs
cat(meanCalcutated, '\n')
cat(medianCalcutated, '\n')
cat(modeCalcutated, '\n')


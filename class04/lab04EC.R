head(cdc$height)
tail(cdc$weight, 20)
plot(cdc$height, cdc$weight,
     xlab = "Height (inches)",
     ylab = "Weight (pounds)",
     main = "Scatterplot of Height vs Weight")
cor(cdc$height, cdc$weight)
hist(cdc$weight)
hist(cdc$height)

# Create height.m
height_m <- cdc$height * 0.0254

# Create weight_kg
weight_kg <- cdc$weight * 0.453592

# Calculate BMI
bmi <- weight_kg/(height_m^2)  

# Scatterplot of height vs BMI
plot(cdc$height, bmi,
     xlab = "Height (meters)",
     ylab = "BMI",
     main = "Scatterplot of Height vs BMI")
cor(cdc$height, bmi)

# Create logical vector: TRUE if BMI >= 30
obese_logical <- bmi >= 30  

# Sum to count how many are obese
num_obese <- sum(obese_logical)  

# Print the result
num_obese

sum(bmi >= 30)/length(bmi)
(sum(bmi >= 30)/length(bmi)) * 100
round( (sum(bmi >= 30)/length(bmi)) * 100, 1)

# Accessing subsets of data using row and column indices
cdc[567, 6]
cdc[1:10, 6]
cdc[1:10, ]

plot(cdc[1:100, "height"], cdc[1:100, "weight"],
     xlab = "Height (inches)",
     ylab = "Weight (pounds)",
     main = "Height vs Weight for First 100 Respondents")

# Count males with BMI >= 30
num_obese_males <- sum(bmi >= 30 & cdc$gender == "m")
num_obese_males

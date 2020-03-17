#!/usr/bash
# Create a normal array with the mentioned elements
capital_cities1=("Sydney" "New York" "Paris")

# Create a normal array with the mentioned elements using the declare method
declare -a capital_cities2

# Add (append) the elements
capital_cities2+=("Sydney")
capital_cities2+=("New York")
capital_cities2+=("Paris")

# The array has been created for you
capital_cities3=("Sydney" "New York" "Paris")

# Print out the entire array
echo ${capital_cities3[@]}

# Print out the array length
echo ${#capital_cities3[@]}
#!/usr/bash

# don't run this file....

# Extract accuracy from first ARGV element
accuracy=$(grep "Accuracy" $1 | sed 's/.* //')

# Conditionally move into good_model folder
if [ $accuracy -ge 90 ]; then
    mv $1 good_models/
fi

# Conditionally move into bad_model folder
if [ $accuracy -lt 90 ]; then
    mv $1 bad_models/
fi
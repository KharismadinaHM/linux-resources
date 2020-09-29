# Create function
what_day_is_it () {

  # Parse the results of date
  current_date=$(date | cut -d " " -f1)

  # Echo the result
  echo $current_date
}

# Call the function
what_day_is_it
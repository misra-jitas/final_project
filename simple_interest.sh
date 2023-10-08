#!/bin/bash

# This script calculates simple interest.

# Prompt the user for principal amount, rate, and time.
read -p "Enter the principal amount: " principal
read -p "Enter the annual interest rate (in percentage): " rate
read -p "Enter the time (in years): " time

# Convert the rate to a decimal.
rate=$(echo "scale=4; $rate / 100" | bc)

# Calculate the simple interest.
interest=$(echo "scale=2; $principal * $rate * $time" | bc)

# Display the result.
echo "Simple Interest: $interest"

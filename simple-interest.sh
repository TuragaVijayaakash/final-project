#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    # Calculate simple interest
    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

    echo "Simple Interest: $interest"
}

# Main script starts here
echo "Simple Interest Calculator"

# Read principal amount from user
read -p "Enter principal amount: " principal

# Read interest rate from user
read -p "Enter interest rate (in percentage): " rate

# Read time period from user
read -p "Enter time period (in years): " time

# Call the function to calculate simple interest
calculate_simple_interest $principal $rate $time

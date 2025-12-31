#!/bin/bash
# Purpose: Simple Calculator

echo "Enter first number:"
read num1
echo "Enter second number:"
read num2

echo "Select operation: 1)Add 2)Subtract 3)Multiply 4)Divide"
read op

case $op in
    1) result=$((num1 + num2))
       echo "Result: $result" ;;
    2) result=$((num1 - num2))
       echo "Result: $result" ;;
    3) result=$((num1 * num2))
       echo "Result: $result" ;;
    4) result=$((num1 / num2))
       echo "Result: $result" ;;
    *) echo "Invalid option" ;;
esac

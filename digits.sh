
#!/bin/bash

# Initialize the sum variable
sum=0

# Traverse a sequence using brace expansion {1000..2000}
for num in {1000..2000}; do
    # Conditional statement using a regular expression
    # Checks if the number contains only 0s and 1s
    if [[ $num =~ ^[01]+$ ]]; then
        # Update the sum using the x=$((...)) syntax from your reference
        sum=$((sum + num))
    fi
done

# Output the final result
echo "The sum is: $sum"
echo "Sum of numbers with digits in set [1,0] is $sum"
	


# Script to generate static library

# Compile the C file to object file
gcc -c -o largest_sum_subarray.o function.c

# Create the static library
ar rcs liblargest_sum_subarray.a largest_sum_subarray.o

# Clean up intermediate object file
rm largest_sum_subarray.o

ar -x liblargest_sum_subarray.a


echo "Static library liblargest_sum_subarray.a generated successfully!"

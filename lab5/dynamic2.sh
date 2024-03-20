

gcc -c -fPIC -o largest_sum_subarray.o function.c


gcc -shared -o liblargest_sum_subarray.so largest_sum_subarray.o

rm largest_sum_subarray.o




echo "Dynamic library liblargest_sum_subarray.so generated successfully!"

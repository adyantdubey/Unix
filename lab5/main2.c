#include <stdio.h>

// Declare the function prototype from the library
extern int maxSubArraySum(int arr[], int size);

int main()
{
    int arr[] = {-2, -3, 4, -1, -2, 1, 5, -3};
    int n = sizeof(arr) / sizeof(arr[0]);

    // Call the function from the library
    int max_sum = maxSubArraySum(arr, n);

    printf("Maximum contiguous sum is %d\n", max_sum);

    return 0;
}

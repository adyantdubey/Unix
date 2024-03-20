#include <stdio.h>

// Function to find the maximum of two integers
int max(int a, int b)
{
    return (a > b) ? a : b;
}

// Function to find the maximum of three integers
int max_of_three(int a, int b, int c)
{
    return max(max(a, b), c);
}

// Function to find the maximum sum subarray using Kadane's algorithm
int maxSubArraySum(int arr[], int size)
{
    int max_so_far = arr[0];
    int curr_max = arr[0];

    for (int i = 1; i < size; i++)
    {
        curr_max = max(arr[i], curr_max + arr[i]);
        max_so_far = max(max_so_far, curr_max);
    }
    return max_so_far;
}

int main()
{
    int arr[] = {-2, -3, 4, -1, -2, 1, 5, -3};
    int n = sizeof(arr) / sizeof(arr[0]);
    int max_sum = maxSubArraySum(arr, n);
    printf("Maximum contiguous sum is %d\n", max_sum);
    return 0;
}

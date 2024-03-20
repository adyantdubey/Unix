#include <stdio.h>
#include <stdlib.h>

#define ARRAY_SIZE 1000

int main()
{
    int i;
    int *ptr = NULL;
    int *arr = (int *)malloc(ARRAY_SIZE * sizeof(int));

    if (arr == NULL)
    {
        printf("Memory allocation failed.\n");
        return 1;
    }

    // Initialize array
    for (i = 0; i < ARRAY_SIZE; i++)
    {
        arr[i] = i;
    }

    // Accessing array elements
    for (i = 0; i <= ARRAY_SIZE; i++)
    { // Note: The loop condition should be i < ARRAY_SIZE, but it's deliberately set to i <= ARRAY_SIZE to cause out-of-bounds access
        printf("Value at index %d: %d\n", i, arr[i]);
    }

    free(arr);

    return 0;
}

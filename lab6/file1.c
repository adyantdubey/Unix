#include <stdio.h>

void foo()
{
    printf("Inside foo()\n");
}

int main()
{
    int a = 10;
    int *ptr = NULL;

    printf("Before dereferencing ptr\n");
    if (ptr != NULL)
    {
        printf("Value of ptr: %d\n", *ptr);
    }
    else
    {
        printf("Pointer is NULL\n");
    }

    printf("Value of a: %d\n", a);

    // Calling a function
    foo();

    printf("After calling foo()\n");

    // Dereferencing a NULL pointer
    printf("%d\n", *ptr);

    printf("End of program\n");

    return 0;
}

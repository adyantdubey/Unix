#!/bin/bash

gcc -c fact.c -o fact_obj.o
gcc -c sum.c -o sum_obj.o
gcc -c main.c -o main_obj.o

ar rcs eg_static.a sum_obj.o fact_obj.o

ls

gcc -o main_result main_obj.o -L. eg_static.a



echo "Static library generated successfully!"

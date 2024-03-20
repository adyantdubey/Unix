#!/bin/bash

gcc -shared *.o -o eg_dynamic.so

export LD_LIBRARY_PATH=:/c/Users/Adyant/OneDrive/Desktop/unix/lab5

./main_result

echo "Dynamic library generated successfully!"

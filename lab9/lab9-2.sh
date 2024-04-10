#!/bin/bash

# List of remote machines
remote_machines=("172.50.4.155")

# Function to get memory usage
get_memory_usage() {
    ssh "$1" "free -m"
}

# Function to get CPU usage
get_cpu_usage() {
    ssh "$1" "top -bn1 | grep 'Cpu(s)'"
}

# Loop through each remote machine
for machine in "${remote_machines[@]}"; do
    echo "Memory usage on $machine:"
    get_memory_usage "$machine"
    echo ""

    echo "CPU usage on $machine:"
    get_cpu_usage "$machine"
    echo ""
done

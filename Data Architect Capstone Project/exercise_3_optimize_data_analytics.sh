#!/bin/bash

# Optimized one-liner: Extract, filter, sort, and count in a single pipeline
echo "Running optimized data analytics script..."
tail -n +2 product_launch_data.csv | cut -d',' -f2,3 | grep ',Apparel$' | cut -d',' -f1 | sort | uniq -c | sort -nr > final_data.csv

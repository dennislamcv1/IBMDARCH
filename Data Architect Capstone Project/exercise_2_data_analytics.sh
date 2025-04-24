Template for creating data analytics script using Bash

#!/bin/bash

# Input file
INPUT_FILE="product_launch_data.csv"

# Step 1: Remove header and extract column Product_Name
echo "Step 1: Extracting Product_Name and removing header..."
cut -d',' -f2,3 "$INPUT_FILE" > extracted_with_header.csv
tail -n +2 extracted_with_header.csv > extracted_data.csv

# Step 2: Filter Apparel products
echo "Step 2: Selecting only Apparel products..."
grep ',Apparel$' extracted_data.csv > filtered_data.csv

# Step 3: Sort the filtered products
echo "Step 3: Sorting data by Product_Name..."
sort filtered_data.csv > sorted_data.csv

# Step 4: Count the number of products
echo "Step 5: Counting the number of  products..."
wc -l < filtered_data.csv > final_data.csv

# Final output
echo "Product launch statistics"
cat final_stats.txt


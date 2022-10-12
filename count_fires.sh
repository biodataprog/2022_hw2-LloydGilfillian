#!/bin/bash -l

# step to write
# download the CSV file
# curl -o calfire.csv ...
lgilf001@pelican:~$ curl -o calfire.csv https://gis.data.cnra.ca.gov/datasets/CALFIRE-Forestry::recent-large-fire-perimeters-5000-acres.csv?outSR=%7B%22latestWkid%22%3A3857%2C%22wkid%22%3A102100%7D

lgilf001@pelican:~$ cat calfire.csv

# print out the range of years found -- you may need to go in and edit the file
# cut -d, ....
lgilf001@pelican:~$ cut -d "," -f 2 

lgilf001@pelican:~$ sort -t “,” -k 2 -r

#MINYEAR=1900
#MAXYEAR=1901
# write code to set these variables with the smallest and largest years
MAXYEAR=2017
MINYEAR=2021

echo "This report has the years: $MINYEAR-$MAXYEAR"
# if you have problems the CSV file already part of this repository so you can use 'calfires_2021.csv'

# print out the total number of fires (remember to remove the header line)
lgilf001@pelican:~$ wc -l

TOTALFILECOUNT=0
# put your code here to update this variable
echo "Total number of files: $TOTALFILECOUNT"

# print out the number of fire in each year
lgilf001@pelican:~$ cut -d "," -f 2
echo "Number of fires in each year follows:"


# print out the name of the largest file use the GIS_ACRES and report the number of acres
echo "Largest fire was $LARGEST and burned $LARGESTACRES"

# print out the years - change the code in $(echo 1990) to print out the years (hint - how did you get MINYEAR and MAXYEAR?
for YEAR in $(echo 1990)
do
#      TOTAL=$(grep ... | awk ...)
      echo "In Year $YEAR, Total was $TOTAL"
done

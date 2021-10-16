#!/bin/bash

#assign working directory variable
WD=$PWD

#clone git repository
git clone https://github.com/farmphils/team-pasteur

#change directory to team-pasteur folder containing scripts
cd team-pasteur

#print comma seprated string as header and save to text file
echo "Name, Email, Slack_Username, Biostack" > 1.txt

#run python script and save output to text file 
python Shubhangi_Hackbio_Task1.py > sht1.txt

python Asibor_Philip_Task_1.py > apt1.txt

python Ebhohimen-Israel.py > ei.txt

#run Rscript and save output to text file 
RScript iamjamesucheStage_0.R > iaju.txt

#read all .txt files and print output to csv file
cat *.txt > TEAMPASTEUR.csv

#remove all .txt files
rm *.txt

#move CSV file to working directory
mv TEAMPASTEUR.csv $WD

#print csv file name and location after processing CSV file
echo "CSV file in present working directory as TEAMPASTEUR.csv"
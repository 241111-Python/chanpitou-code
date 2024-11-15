#!/usr/bin/bash
source /mnt/c/Revature/chanpitou-code/Project1/library.sh

###################################
# Analyzing the EASY Level Dataset
SUM=0
COUNT=0
AVERAGE=0
BEST_ATTEMP=10000

while IFS=\n read -r score
do
    add_count $score
    best_attemp $score
done < <(grep "guesses" /mnt/c/Revature/chanpitou-code/Project1/Easy_Level_log.txt | cut -d ' ' -f2)

average

echo "_____________________________________________________________________" >> /mnt/c/Revature/chanpitou-code/Project1/statistics.txt
echo "______________Timestamp: $(date)_______________" >> /mnt/c/Revature/chanpitou-code/Project1/statistics.txt/statistics.txt
echo "_____________________________________________________________________" >> /mnt/c/Revature/chanpitou-code/Project1/statistics.txt

echo "Easy Level Section:" >> /mnt/c/Revature/chanpitou-code/Project1/statistics.txt
echo "Total games played (E): $COUNT" >> /mnt/c/Revature/chanpitou-code/Project1/statistics.txt 
echo "Best attemp (E): $BEST_ATTEMP" >> /mnt/c/Revature/chanpitou-code/Project1/statistics.txt 
echo "The average number of guesses (E): $AVERAGE" >> /mnt/c/Revature/chanpitou-code/Project1/statistics.txt 

#####################################
# Analyzing the NORMAL Level Dataset
SUM=0
COUNT=0
AVERAGE=0
BEST_ATTEMP=10000

while IFS=\n read -r score
do
    add_count $score
    best_attemp $score
done < <(grep "guesses" /mnt/c/Revature/chanpitou-code/Project1/Normal_Level_log.txt | cut -d ' ' -f2)

average

echo "___________________________________________" >> /mnt/c/Revature/chanpitou-code/Project1/statistics.txt
echo "Normal Level Section:" >> /mnt/c/Revature/chanpitou-code/Project1/statistics.txt
echo "Total games played (N): $COUNT" >> /mnt/c/Revature/chanpitou-code/Project1/statistics.txt 
echo "Best attemp (N): $BEST_ATTEMP" >> /mnt/c/Revature/chanpitou-code/Project1/statistics.txt 
echo "The average number of guesses (N): $AVERAGE" >> /mnt/c/Revature/chanpitou-code/Project1/statistics.txt 

###################################
# Analyzing the HARD Level Dataset
SUM=0
COUNT=0
AVERAGE=0
BEST_ATTEMP=10000

while IFS=\n read -r score
do
    add_count $score
    best_attemp $score
done < <(grep "guesses" /mnt/c/Revature/chanpitou-code/Project1/Hard_Level_log.txt | cut -d ' ' -f2)

average

echo "___________________________________________" >> /mnt/c/Revature/chanpitou-code/Project1/statistics.txt
echo "Hard Level Section:" >> /mnt/c/Revature/chanpitou-code/Project1/statistics.txt
echo "Total games played (H): $COUNT" >> /mnt/c/Revature/chanpitou-code/Project1/statistics.txt 
echo "Best attemp (H): $BEST_ATTEMP" >> /mnt/c/Revature/chanpitou-code/Project1/statistics.txt 
echo "The average number of guesses (H): $AVERAGE" >> /mnt/c/Revature/chanpitou-code/Project1/statistics.txt 

echo "Script executed successfully!"
exit 0



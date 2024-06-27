#!/bin/bash
 
read -p "Bandit Number: " bandit
read -p "pass: " passbandit

bandit="$(echo "bandit$bandit")"
echo "$passbandit" > $passbandit

echo "$(sshpass -p $passbandit ssh $bandit@bandit.labs.overthewire.org -p 2220)"


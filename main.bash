#!/bin/bash
data=$(curl -s https://www.health.govt.nz/covid-19-novel-coronavirus/covid-19-data-and-statistics/covid-19-current-cases)
echo "$data" | grep -Eo "Last updated[a-zA-Z0-9 ]*"
echo "$data" | grep -A 1 "New cases reported during the past 24 hours" | grep -Eo "<strong>[a-zA-Z0-9]*</strong>" | sed "s/<strong>//;s/<\/strong>//"
#average parametre of 1000 log string
tail -n 1000 mylog |  awk 'BEGIN { coun=0; sum=0 } { coun++; sum+=$6 } END { print sum/coun }' 

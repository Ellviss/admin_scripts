#check apache connectedip for last hour
time=$(date -d "1 hour ago" '+%d/%b/%Y:%H')
echo $time
cat mylog |grep $time |awk '{print $1}' |sort|uniq -c |sort -n |tail

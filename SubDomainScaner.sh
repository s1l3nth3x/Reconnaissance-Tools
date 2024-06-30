#!/bin/bash 

Site=$!

echo -e "SUBFINDER BIGIN\n===================="
`subfinder -d $1 -silent -all > res.txt`
echo -e "SUBFINDER END\n===================="
echo -e "ASSETFINDER BIGIN\n===================="
`assetfinder -subs-only $1 >> res.txt`
echo -e "ASSETFINDER END\n===================="

echo -e "PROSES ON RESULT IS BIGIN\n===================="
`cat res.txt | sort -u > finalDomain.txt`
echo -e "PROSES END\n===================="
echo -e "REMOVING TEMP FILE\n===================="
`rm res.txt`
echo -e "COMMAND SUCCESS\n===================="

num=`cat finalDomain.txt |wc -l`

echo -e "FINISH\n====================\nSUBDOMAIN FIND=$num th\n===================="

echo -e "Final Domain file has successfily crated\n  "
echo -e "For see result please cat finalDomain.txt"

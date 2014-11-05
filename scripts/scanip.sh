cidr=$(cat "masque.txt")

#nmap 127.0.0.1/$cidr > scanipresult.txt
address=$(grep -o "inet adr:[0-9.]*" < <(ifconfig eth0) | awk 'BEGIN{FS=":"}{print $2}')
ip="$address"/"$cidr"
echo "$ip"
nmap -sP $ip > scanipresult.txt
cat scanipresult.txt | grep -Eo '([0-9]*\.[0-9]*\.[0-9]*\.[0-9]*)' > ip.txt

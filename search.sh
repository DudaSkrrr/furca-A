cat /etc/hosts | while read ip nume
do
    if ! nslookup "$nume" | grep "$ip"; then
	echo "Bogus IP for $nume in /etc/hosts!"
    fi
done

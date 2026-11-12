verifica_ip() {
    nume=$1
    ip=$2
    dns=$3

    if ! nslookup "$nume" "$dns" | grep "$ip"; then
        echo "Bogus IP for $nume in /etc/hosts!"
    fi
}

cat /etc/hosts | while read ip nume
do
    verifica_ip "$nume" "$ip" "9.9.9.9"
done

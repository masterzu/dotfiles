#!/bin/bash

function usage {
	echo $0: no search string given
	exit 1
}

test -z "$1" && usage
search="$1"

resu=""
do_search(){

	local LDAPURI="$1"
	local LDAPBASE="$2"
	local search="$3"
	ldapsearch -x -LLL -H $LDAPURI -b $LDAPBASE "(|(uid=~$search)(cn~=$search)(mail~=$search))" mail cn 2>/dev/null |
			awk 'BEGIN { n1=1; cn=""; mail="" }  /^cn:/ { cn = $2 " " $3 " " $4 " " $5 " " $6 } /^mail:/ { mail = $2 } /^$/ { resu[n1] = mail "\t" cn; mail=""; cn=""; n1++ } END { for (v in resu) print resu[v] } ' |
			sed '/^$/d'
}

# search in labo ldap + in university
resu="$(do_search ldap://ldap.dalembert.upmc.fr o=ijlrda "$search")
$(do_search ldap://ldap.upmc.fr ou=People,dc=upmc,dc=fr "$search")"

echo $(echo "$resu" | wc -l) "address(es) found:"
echo "$resu"




if [[ "$1" == "" ]]
then
	echo "Please the enter the hardening rating (0-100) that you want to measure against"
	exit
fi
awk -F '[]]|[[]' -v rat="$1" '/Hardening index/ && $2 > rat { exit 0 } /Hardening index/ && $2 <= rat{ exit 1}' /var/log/lynis.log
exit $?

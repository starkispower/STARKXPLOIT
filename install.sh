#!/bin/bash
Green='\033[0;32m'
white='\033[0;37m'
NC='\033[0m'
clear
printf '\033]2; INSTALLER\a'
echo -e "${Green}[*] Press \e[0;33many key\e[0;32m to install StarkXploit..."
read -n 1 
clear

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ "$DIR" != "/root/StarkXploit" ]]
then
	echo -e "\033[0;35m[~] MAMAN INSTALL AKKI THARAM MAKKALE PEDIKKANDA"
	sleep 4
	if [[ -d /root/StarkXploit ]]
	then 
		rm -r /root/StarkXploit
	fi
	mkdir /root/StarkXploit
	cp -r "$DIR"/* /root/StarkXploit
	chmod +x /root/StarkXploit/install.sh
	#gnome-terminal -- bash -c "sudo /root/bootmiester/install.sh; exec bash"
fi
echo -e "${Green}[+] MAMAN IS INSTALLING AND VIBING WITH STARKXPLOIT..."
sleep 1
echo -e "${Green}[+] MAMANU PERMISSION THA MAKKALE..."
sleep 2
chmod +x /root/StarkXploit/starkexploit.py
clear
echo -e "${Green}[+] Copying Tool to /bin/starkexploit"
cd /root/StarkXploit
cp /root/StarkXploit/starkexploit.py /bin/starkexploit
clear

while true
do  
	clear
	echo -e "${Green}[*] Are you \e[0;33mu\e[0;32mpdating or \e[0;33mi\e[0;32mnstalling the script?(\e[0;33mu\e[0;32m/\e[0;33mi\e[0;32m): "
	echo -e "${Green}[#] Only use 'i' for the first time."
	read UORI
	if [[ "$UORI" = "u" ]]
	then 
		clear 
		echo -e "This feature is currently under construction.."
		sleep 3
		exit
	elif [[ "$UORI" = "i" ]]
	then 
		clear
		BASHCHECK=$(cat ~/.bashrc | grep "/bin/starkexploit")
		if [[ "$BASHCHECK" != "" ]]
		then 
			echo -e "i oru vattame upayogikkan padollu velechilekkalle..........."
			sleep 3
			break
		fi
		echo -e "${Green}[#] Adding StarkXploit to PATH so you can access it from anywhere"
		sleep 1
		export PATH=/bin/starkexploit:$PATH
		sleep 1
		echo "export PATH=/bin/starkexploit:$PATH" >> ~/.bashrc
		sleep 1
		clear
		break
	fi
done
sleep 1
echo -e "${Green}[#] Installation is finished. Type 'sudo starkexploit' to launch the script after we exit."
sleep 0.5
echo -en "${Green}[+] Starting StarkXploit"; sleep 0.5 ;echo -en "." ;sleep 0.5 ;echo -en "." ;sleep 0.5 ;echo -en "." ;sleep 0.5 ;echo -en "." ;
sudo starkexploit



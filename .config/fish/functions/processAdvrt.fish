function processAdvrt
    echo "$(adb shell "netstat -tuple | grep LISTEN | grep $(whoami)" 2> /dev/null; adb shell 'netstat -tuple | grep LISTEN | grep $(whoami)' 2> /dev/null)" | \
    # echo "$(adb shell "netstat -tuple | grep LISTEN | grep $(whoami)" 2> /dev/null)" | \
    awk '{print $4}' | awk -F ':' '{print $NF}' | sort | uniq | paste -sd ',' - | \
    xargs -I {} echo nmap -p{} -Pn -n 0.0.0.0
    # xargs -I {} echo nmap -p{} -Pn -n -sV -T5 0.0.0.0
end

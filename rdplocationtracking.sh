#/bin/bash
# Title: Remote Desktop Location Tracking Tool
# Author: Matthew Lindman, Trevor DeWall
# Purpose: Captures or loads traffic data to monitor geolocation data of remote desktop protocols and displays locations

captureTraffic () {
    echo -c "Capturing Traffic"
    echo -n "-----------------\n"
    # Determine time to capture traffic
    echo -n "Enter time to capture (# seconds): "
    read captureTime
    # Determine filename to capture to (.pcap not expected in user input)
    echo -n "Enter filename: "
    read fileName
    fileName = fileName + ".pcap"
        
    # Run tshark with parameters given
    cmd=( tshark -b "duration:$captureTime" -R "(tcp.port==3389)" -w $filename )
    "${@cmd[@]}"
}
    
loadTraffic () {
    echo -c "Loading Traffic"
    echo -n "---------------\n"
    # Determine filename to load (.pcap not expected in user input)
    echo -n "Enter filename: "
    read fileName
    fileName = fileName + ".pcap"
    fileNameOut = fileName + "Out.pcap"
        
    # Run tshark with parameters given
    cmd=( tshark -R "(tcp.port==3389)" -r $fileName -w $fileNameOut )
    "${@cmd[@]}"
}

while(true) {
    echo -c "Remote Desktop Location Tracking Tool"
    echo -n "-------------------------------------\n"
    
    # Read in User Input to load or monitor traffic
    echo -n "Capture (C) or Load (L) Pcap: "
    read userChoice
    
    if [ $userChoice -eq 'C' || $userChoice -eq 'c' ] {
        captureTraffic
    }
    elif [ $userChoice -eq 'L' || $userChoice -eq 'l' ] {
        loadTraffic
    }
    else {
        echo -n "Error: invalid input"   
    }
}
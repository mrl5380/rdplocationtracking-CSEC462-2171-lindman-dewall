/**
* @file RDPTracking
* @author Matthew Lindman, Trevor DeWall
* @version 0.1
*/

function captureTraffic(captureTime) {
    console.log("tshark -b "duration:captureTime" -R "(tcp.port==3389)" -w trafficCapture.pcap");
    wait(captureTime);
    console.log("tshark -r trafficCapture.pcap -T fields -e eth.src -e eth.dst -e ip.src -e ip.dst -E header=y -E seperator=, -E quote=d, -E offccurrence=f > captureData.csv")
    }
}

function loadTraffic() {
    
}

var userPrompt 
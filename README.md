rdplocationtracking-CSEC462-2171-lindman-dewall

Matthew Lindman - mrl5380@g.rit.edu, Trevor Dewall - td2334@g.rit.edu


RDP Location Tracking Tool
--------------------------------------------------

Prerequisites:
----------------
Webserver with csv data
Javascript, SVG, CSS3 capable browser ie Firefo, Chrome, Safari, Opera, IE9+


Purpose:
----------------
This tool is designed to give an immediate visual representation of remote desktop connections from client(red) to host(blue).
The goal is to allow admins all the way down to department managers the ability to see if remote connections are coming from the right place.

Use:
----------------
Using the tool does not require much in the way of installation.
In order to get the tool running in the html code is the d3.csv('filelocation') line.
This address needs to be changed to the http location of the csv file to load.
Once that is done, save the file and simple open the web page and click load capture file.
This will display all RDP connection host(blue) and clients(red) with connections drawn

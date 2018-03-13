#!/bin/bash
SOCKPORT=`ps -aef| grep qemu | sed 's/ -/\r\n -/g' | grep "console.sock"| awk -F"path=" '{print $2}' | awk -F"," '{print $1}'`
sudo socat stdin,raw,echo=0,escape=0x11 unix-connect:$SOCKPORT

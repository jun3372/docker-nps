#!/bin/bash

if [ ! -d "/nps/conf" ]; then 
    cp -rf "/var/local/nps/conf" "/nps/"
fi

if [ ! -d "/nps/web" ]; then 
    cp -rf "/var/local/nps/web" "/nps/"
fi

if [ ! -d "/nps/nps" ]; then 
    cp -rf "/var/local/nps/nps" "/nps/"
fi

if [ ! -x "/nps/nps" ]; then 
    chmod +x "/nps/nps"
fi

/nps/nps test

/nps/nps start

tail -f /dev/null

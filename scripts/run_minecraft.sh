#!/bin/bash -e
scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Total memory
memory_kb=`awk '/MemTotal/{print $2}' /proc/meminfo`

# Calculate minimum memory
memory_min=$(($memory_kb/100*30))
# Calculate maximum memory
memory_max=$(($memory_kb/100*80))

java -jar -Xms${memory_min}K -Xmx${memory_max}K \
	$scriptdir/minecraft_server.jar nogui \
	&>> /var/log/minecraft.log

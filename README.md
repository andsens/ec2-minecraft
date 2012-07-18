Minecraft server plugin for andsens/ec2debian-build-ami
=======================================================
This plugin installs a minecraft server under a
separate user account.

It installs a startup script that automatically launches
the minecraft server at boot.  
A wrapper script adjusts the java -Xms and -Xmx values
to match the available RAM (read instance type)

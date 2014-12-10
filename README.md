#i3-config

![Showing wallpaper with several workspaces open (first is named WWW and the Mail workspace is mapped on M key in opposite to other workspaces that are mapped on numbers 0-9).](./2014-12-09-130857_1366x768_scrot.png  "Showing wallpaper with several workspaces open (first is named WWW and the Mail workspace is mapped on M key in opposite to other workspaces that are mapped on numbers 0-9).")

These configuration files are for the X11 tilling window manager, i3. 


##Files

All files functions explained below:

* .i3/config - the main i3 config file containing key bindings and colours for windows.
* .i3/conkyrc - the conky config for i3status.
* .i3/conky - script that's used for running conky with the conkyrc settings that are provided.
* .i3/volume.sh - used for display Pulseaudio volume (may need to edit before using on your system). Can get confused when used together with USB based audio systems.
* .i3/weather.sh - used to show weather info (current RealFeel temperature plus the weather status).
* .i3/power_advanced.sh - used to determine if the AC adapter is plugged (charging), battery is full or else (discharging/unknown).

##Installation

If you'd like to install this, clone the repo and move everything to the appropriate places. Make sure you have everything that's needed installed (basically ~/.i3/ folder).

Make sure feh is installed and set your wallpaper for the first time with "feh --bg-fill /path/to/file". This will create ~/.fehbg which i3 will run upon startup. .fehbg will automatically update whenever you run feh to change the wallpaper again.

##i3 bar sections explained

###Networking part

Networking part changes the info it shows according to what tye of connection is used. It detects three states: if the Wifi (wlan0) is being used, if the LAN (lan0) is being used or else (which means there's no connection).

>Wifi/LAN is used shows the name of connection in gray followed by the information about the current upspeed and downspeed.

>When there's no connection, you'll only see orange coloured warning 'NO CONNECTION'.

###Brightness part

One of the more interesting parts of my conky/i3 bar setup. It's based on single thought that brightness is made of 10 letters and every one can be used to represent the corresponding 10% of screen brightness. 

If three letters are white and sever remaining are gray, it means that your screen's brightness is 30% and so on. As I'm used to have the screen brightness at around 50% and use the higher values only for movies I coloured the last two letters to yellow as some sort of reminder that my screen brightness is really high which can reflect on my battery usage. 

###Weather part

Uses the .i3/weather.sh script to download an accuweather web page (using wget) and extract information needed for script. The conkyrc part of this script also checks if there's an internet connection avaible so that it tries to download that info every minute. When there's no connection it hides the gray 'WEATHER' indicator that would be useless there without any info and without any ways to getting that info.

###Volume part

Uses the .i3/volume.sh to determine if the audio output is muted or not. If it's muted it show's orange 'MUTED' indicator and otherwise it shows the current volume level. 

As my volume control allows to to go above 100% of volume (and I don't really know why and it seems there's no limit) which can be sometimes usefull (like when watching movies with very quiet audio) so I only detect if the audio is above 100% and then I paint the value in yellow as a sort of reminder.

>**Warning:** High volume values can potentially damage your laptop's audio system.

###CPU and RAM bars

These two bars do basiccaly the same. They show current RAM/CPU usage and if it's above 50%, it paints it yellow.

###System temperature part

It shows current laptops temperature and when the value gets above certain tresholds (55 or 70 degrees) it paints the value yellow or orange respectively.

###Power part

I'm really proud of this indicator, because it's somehow smarter than only showing the current power state.

It uses the .i3/power_advanced.sh script to determine if the battery is charging/discharging/or full (I try to avoid the overcharging of my battery as good as I can).

1. When my laptop is charging the gray indicator shows 'CHARGING' and the value is white except when it's above 98% so that I'm aware that the battery will be full in a few minutes.

2. When my laptop is discharging the gray indicators shows 'DISCHARGING' and the values is white (even if the battery is above 98%) except when it drops below 20% (yellow) or 10% (orange).

3. When my laptop's battery is full the indicator turns orange and shows 'BATERY FULL' with no additional informations.

>Time indicator is white at all times to keep it easily readable.

###Date and time

Shows the date and time in my prefered format. 
>PRO means 'prosinec' in Czech Republic, which is the name of month December.

##Future plans

I plan to color the gray indicators to warning colors instead of actual values in some parts (like TEMP, RAM or CPU ones) to see how it looks.


##Credits

This repo was originally forked from [here](https://github.com/ivyl/i3-config), then I reforked it from [here](https://github.com/NorthAntrim/i3-config).

##Note

This version is not final, I'm planning on improving it during the time.

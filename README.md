i3-config
==========


![Screenshot](screenshot.png) 
<sup>(note: Showing just plain wallpaper with my i3bar at bottom.)</sup>

These configuration files are for the X11 tilling window manager, i3. 


Files
-----

* .i3/config - the main i3 config file containing key bindings and colours for windows.
* .i3/conkyrc - the conky config for i3status.
* .scripts/volume.sh - used for display Pulseaudio volume (may need to edit before using on your system).
* .scripts/weather.sh - used to show weather temperature (right now just tempreature, planning on displaying additional info in the future).

Installation
------------

If you'd like to install this, clone the repo and move everything to the appropriate places. Make sure you have everything that's needed installed.

My own .xinitrc file contains simply "exec i3". 

Make sure feh is installed and set your wallpaper for the first time with "feh --bg-fill /path/to/file". This will create ~/.fehbg which i3 will run upon startup. .fehbg will automatically update whenever you run feh to change the wallpaper again.

I've used GTK themes and installed GNOME so I have full support for them and for a few other reasons. Install gnome-tweak-tool and you can customize your theme settings. i3 runs gnome-settings-daemon upon startup. I also use gnome-terminal for the easy customization (ex: colour and transparent background) and other features like tabs and search. You can turn off gnome-terminal's menubar in the profile settings to give it more of a rxvt/i3-sensible-terminal look.

Credits
-------

This repo was originally forked from [here](https://github.com/ivyl/i3-config), I forked it from [here](https://github.com/NorthAntrim/i3-config).

Note
----

This version is not final, I'm planning on improving it during the time.

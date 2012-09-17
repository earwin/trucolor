## Why? Wha? How?

Terminal.app adjusts text foreground color so it always remains visible over whatever background it can happen upon.
See the left image, the same ANSI color codes are used for background and foreground,
but green is visible over green, and red is visible over red.

Black (#0) is an exception to the rule, it is not adjusted when displayed over itself.

While this might be handy for badly chosen color combinations (doesn't make default blue-over-black crap any better though), it botches up carefully chosen color themes.

Left - TruColor off, Right - TruColor on

![TruColor OFF](https://raw.github.com/earwin/TruColor/master/img/off.png) ![TruColor ON](https://raw.github.com/earwin/TruColor/master/img/on.png)

TruColor shortcircuits adjustment logic and forces Terminal.app to display exactly the colors you chose in Preferences.

## Building and usage

This is a hastily thrown together hack, working with my exact version of Terminal.app and XCode.
Feel free to test on other versions and fix Min/MajBundleVersion as well as build settings.

Plugin requires [SIMBL](http://www.culater.net/software/SIMBL/SIMBL.php) to load itself into Terminal.app.

Version 0.9.9 worked for me on 10.7.4, though I stumbled recently upon [EasySIMBL](https://github.com/norio-nomura/EasySIMBL) and like it more.

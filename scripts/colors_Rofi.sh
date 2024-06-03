#!/bin/bash

#rofi file 
colorFile="$HOME/.config/rofi/colors/custom.rasi"

#replace colors

sed -i "s/background:.*/background:     $BG\FF;/" $colorFile
sed -i "s/foreground:.*/foreground:     $FG\FF;/" $colorFile
sed -i "s/background-alt:.*/background-alt: $COLOR2\FF;/" $colorFile
sed -i "s/selected:.*/selected:       $COLOR4\FF;/" $colorFile
sed -i "s/active:.*/active:         $COLOR3\FF;/" $colorFile
sed -i "s/urgent:.*/urgent:         $COLOR5\FF;/" $colorFile




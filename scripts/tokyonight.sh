#!/bin/bash

# Set the colors

zshfile="$HOME/.zshrc"

sed -i "s/export BG=.*/export BG=\"#0f1016\"/" $zshfile
sed -i "s/export FG=.*/export FG=\"#bcbfcf\"/" $zshfile
sed -i "s/export CUR=.*/export CUR=\"#bcbfcf\"/" $zshfile
sed -i "s/export COLOR0=.*/export COLOR0=\"#0f1016\"/" $zshfile
sed -i "s/export COLOR1=.*/export COLOR1=\"#D26E81\"/" $zshfile
sed -i "s/export COLOR2=.*/export COLOR2=\"#F7768E\"/" $zshfile
sed -i "s/export COLOR3=.*/export COLOR3=\"#62ADA6\"/" $zshfile
sed -i "s/export COLOR4=.*/export COLOR4=\"#76A0EC\"/" $zshfile
sed -i "s/export COLOR5=.*/export COLOR5=\"#7AA2F7\"/" $zshfile
sed -i "s/export COLOR6=.*/export COLOR6=\"#73D8CC\"/" $zshfile
sed -i "s/export COLOR7=.*/export COLOR7=\"#bcbfcf\"/" $zshfile
sed -i "s/export COLOR8=.*/export COLOR8=\"#838590\"/" $zshfile
sed -i "s/export COLOR9=.*/export COLOR9=\"#D26E81\"/" $zshfile
sed -i "s/export COLOR10=.*/export COLOR10=\"#F7768E\"/" $zshfile
sed -i "s/export COLOR11=.*/export COLOR11=\"#62ADA6\"/" $zshfile
sed -i "s/export COLOR12=.*/export COLOR12=\"#76A0EC\"/" $zshfile
sed -i "s/export COLOR13=.*/export COLOR13=\"#7AA2F7\"/" $zshfile
sed -i "s/export COLOR14=.*/export COLOR14=\"#73D8CC\"/" $zshfile
sed -i "s/export COLOR15=.*/export COLOR15=\"#bcbfcf\"/" $zshfile

source ~/scripts/colordunst.sh
source ~/scripts/colorspy3.sh
source ~/scripts/colori3.sh
source ~/scripts/colors_Rofi.sh

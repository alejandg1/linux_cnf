
#!/bin/bash
colors_file="$HOME/.cache/wal/colors.json"

background=$(jq -r '.special.background' $colors_file)
foreground=$(jq -r '.special.foreground' $colors_file)
cursor=$(jq -r '.special.cursor' $colors_file)

color0=$(jq -r '.colors.color0' $colors_file)
color1=$(jq -r '.colors.color1' $colors_file)
color2=$(jq -r '.colors.color2' $colors_file)
color3=$(jq -r '.colors.color3' $colors_file)
color4=$(jq -r '.colors.color4' $colors_file)
color5=$(jq -r '.colors.color5' $colors_file)
color6=$(jq -r '.colors.color6' $colors_file)
color7=$(jq -r '.colors.color7' $colors_file)
color8=$(jq -r '.colors.color8' $colors_file)
color9=$(jq -r '.colors.color9' $colors_file)
color10=$(jq -r '.colors.color10' $colors_file)
color11=$(jq -r '.colors.color11' $colors_file)
color12=$(jq -r '.colors.color12' $colors_file)
color13=$(jq -r '.colors.color13' $colors_file)
color14=$(jq -r '.colors.color14' $colors_file)
color15=$(jq -r '.colors.color15' $colors_file)

zshrc_file="$HOME/.zshrc"

# colores especiales
sed -i '/^export BG=/d' $zshrc_file
sed -i '/^export FG=/d' $zshrc_file
sed -i '/^export CUR=/d' $zshrc_file
echo "export BG=\"$background\"" >> $zshrc_file
echo "export FG=\"$foreground\"" >> $zshrc_file
echo "export CUR=\"$cursor\"" >> $zshrc_file

for i in {0..15}; do
    sed -i "/^export COLOR$i=/d" $zshrc_file
    value=$(eval echo \$color$i)
    echo "export COLOR$i=\"$value\"" >> $zshrc_file
done
source $zshrc_file


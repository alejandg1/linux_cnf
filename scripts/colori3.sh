#!/bin/bash
i3colorFile="$HOME/.config/i3/config" 

sed -i "s/set \$bg.*/set \$bg $BG/" $i3colorFile
sed -i "s/set \$fg.*/set \$fg $FG/" $i3colorFile
sed -i "s/set \$cur.*/set \$cur $CUR/" $i3colorFile
for i in {0..15}; do
    value=$(eval echo "\$COLOR$i")
    sed -i "s/set \$color$i.*/set \$color$i $value/" $i3colorFile
done

i3-msg reload
i3-msg restart

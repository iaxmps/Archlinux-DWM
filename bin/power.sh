
#!/bin/bash
#modified from https://github.com/domac/archlinux/blob/master/.bin/dwm-statusbar

    if [ $(cat /sys/class/power_supply/AC/online) == 0  ]; then
        p=$(acpi | awk '/Discharging/ {printf("%d", $4)}')
        if [ $p -le 15 ]; then
            echo -ne "\x03\x01 $p%"
        else
            if [ $p -ge 90 ]; then
                echo -ne "\x04\x01 $p%"
            else
                if [ $p -ge 34 ]; then
                    echo -ne "\x07\x01 $p%"
                else
                    echo -ne "\x02\x01 $p%"
                fi
            fi
        fi
    else
        if [ $(cat /sys/class/power_supply/BAT0/status) == Charging ]; then
            p=$(acpi | awk '/Charging/ {printf("%d", $4)}')
            echo -ne "\x05\x01 $p%"
        else
            echo -ne "\x04 \x01 AC"
        fi
    fi



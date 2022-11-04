#!/bin/bash

end=$(( $(tput colors)-1 ))
for fg in $(seq 0 $end); do
    for bg in $(seq 0 $end); do
        set_fg=$(tput setaf $fg)
        set_bg=$(tput setab $bg)
        reset=$(tput sgr0)
        printf "${set_fg}${set_bg}F:%s B:%s${reset}\n" $fg $bg
    done
done


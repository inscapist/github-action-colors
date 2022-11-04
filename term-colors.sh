#!/bin/bash

end=$(($(tput colors) - 1))
w=8
i=0
for fg in $(seq 0 $end); do
    for bg in $(seq 0 $end); do
        set_fg=$(tput setaf $fg)
        set_bg=$(tput setab $bg)
        reset=$(tput sgr0)
        printf "${set_fg}${set_bg}F:%-3s B:%-3s${reset}" $fg $bg
        [[ $((i % w)) == $((w - 1)) ]] && echo
        ((i++))
    done
done

exit 0

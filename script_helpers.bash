#!/bin/bash

function pick() {
    local message=$1
    local choices=$2
    local values=$3
    values=${values:="$choices"}
    local choices_lines=$(printf "%s\n" "$choices" | wc -l)
    local user_choice=""
    if [ $choices_lines -lt 2 ]; then
        PICK="$choices"
    else
        re='^[0-9]+$'
        while [[ ! $user_choice =~ $re ]] || [ $user_choice -lt 1 ] || [ $user_choice -gt $choices_lines ]; do
            printf "$message\n"
            printf "%s\n" "$choices" | cat -n
            printf "Enter number 1..%d: " $choices_lines
            read user_choice
        done

        PICK="$(printf %s "$values" | sed -ne "$user_choice"p)"
    fi
}

function strip_comments() {
    local COMMENT_PREFIX="$1"
    COMMENT_PREFIX=${COMMENT_PREFIX:="#"}
    sed -e "s/$COMMENT_PREFIX.*$//" | grep -v "^$"
}

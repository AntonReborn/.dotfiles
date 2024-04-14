#!/usr/bin/env bash

action=$1
path=$2
fav_path="${HOME}/.favorite_projects/"

short_name=$(basename "$path" | tr . _)

if [[ "$action" == "add" ]]; then
    echo "ln -s $path ${fav_path}${short_name}"
    ln -s $path ${fav_path}${short_name}
else
    rm ${fav_path}/${short_name}
fi



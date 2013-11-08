#!/usr/bin/env zsh
########################## DO NOT CHANGE THIS PART #############################
control_c() { echo "\nBye"; exit $?; }
trap control_c SIGINT
################################################################################

pathToScss='./scss/'
pathToCss='./css/'
# workspace specify if the code is in dev (development) or dep (deployment)
# default is dev
workspace='dev'
# style of the output code; nested, compact, compressed, expanded
# dev default is expanded
# dep defualt is compressed
if [ "$workspace" = "dev" ]; then
    style='expanded'
    debug='-l'
elif [ "$workspace" = "dep" ]; then
    style='compressed'
    debug=''
fi
# uncomment following line and set your own style
# style='your_own'


sass -E "utf-8" "$debug" --style "$style" --watch "$pathToScss:$pathToCss" 
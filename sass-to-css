#!/usr/bin/env zsh
############################### CONFIGURATION ##################################
pathToScss='./scss/'
pathToCss='./css/'
# workspace specify if the code is in dev (development) or dep (deployment)
# default is dev
workspace='dev'
# style of the output code; nested, compact, compressed, expanded
# if the style value is something else than empty string than it will be used
# it will affect the settings of the style from the workspace
style=''
################################################################################

########################## DO NOT CHANGE THIS PART #############################

control_c() { echo "\n`purple_text Bye`"; exit $?; }
trap control_c SIGINT

red_text()      { echo "\e[31m$1\e[0m"; }
green_text()    { echo "\e[32m$1\e[0m"; }
blue_text()     { echo "\e[34m$1\e[0m"; }
purple_text()   { echo "\e[35m$1\e[0m"; }

# dev default is expanded
# dep defualt is compressed
if [ "$workspace" = "dev" ]; then
    if [ "$style" = '' ]; then  style='expanded';  fi
    outputMessage=`purple_text development`
elif [ "$workspace" = "dep" ]; then
    if [ "$style" = '' ]; then  style='compressed';  fi
    outputMessage=`purple_text deployment`
fi
outputMessage+=" `green_text $style`"

echo $outputMessage
echo `blue_text "scss path $pathToScss"`
echo `blue_text " css path $pathToCss"`
# if there was changes in the settings than it will update the css file
sass -E "utf-8" -l --force --style "$style" --update "$pathToScss:$pathToCss"
# start watch for changes
sass -E "utf-8" -l --style "$style" --watch "$pathToScss:$pathToCss" --trace

################################################################################
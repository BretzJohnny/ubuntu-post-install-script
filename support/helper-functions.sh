#!/bin/bash 

# Prints Text with a given color and clears the color when done.
#
# $1 - Color
# $2 - Text
function echo_with_color() {
   echo -e $1$2$Color_Off
}

# Appends the given package names to the variable that is
# passed to apt-get install
#
# $1 - Space separated string of package names
function add_package() {
  APT_PACKAGES_TO_INSTALL="$APT_PACKAGES_TO_INSTALL $1"
}

# alias for sudo add-apt-repository
#
# $1 - Repository
function add_repo(){
   sudo add-apt-repository $1
}

# Loads all scripts in a directory
#
# $1 - The directory relative to the directory setup.sh is ran from
function include_directory(){
  for file in $1 ; do
    if [ -f "$file" ] ; then
      . "$file"
    fi
  done
}
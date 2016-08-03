#!/bin/bash

function program_is_installed {
  # set to 1 initially
  local return_=1
  # set to 0 if not found
  type $1 >/dev/null 2>&1 || { local return_=0; }
  # return value
  echo "$return_"
}

function echo_fail {
  # echo first argument in red
  printf "\e[31m✘ ${1}"
  # reset colours back to normal
  echo -e "\033[0m"

}

function echo_pass {
  # echo first argument in green
  printf "\e[32m✔ ${1}"
  # reset colours back to normal
  echo  -e "\033[0m"
}

function echo_if {
  if [ $1 == 1 ]; then
    echo_pass $2
  else
    echo_fail $2
  fi
}

clear

echo "Node      $(echo_if $(program_is_installed node))"
echo "Mongodb   $(echo_if $(program_is_installed mongod))"
echo "Redis    	$(echo_if $(program_is_installed redis-server))"
echo "Ruby      $(echo_if $(program_is_installed ruby))"
echo "Rails     $(echo_if $(program_is_installed rails))"
echo "Bundler   $(echo_if $(program_is_installed bundle))"
echo "G++       $(echo_if $(program_is_installed g++))"
echo "Openssl   $(echo_if $(program_is_installed openssl))"
echo "Sqlite    $(echo_if $(program_is_installed sqlite))"
echo "autoconf  $(echo_if $(program_is_installed autoconf))"
echo "ncurses	$(echo_if $(program_is_installed ncurses5-config))"
echo "automake	$(echo_if $(program_is_installed automake))"
echo "Libtool	$(echo_if $(program_is_installed libtool))"
echo "Bison	$(echo_if $(program_is_installed bison))"
echo "TCL	$(echo_if $(program_is_installed tclsh))"
echo "GIT	$(echo_if $(program_is_installed git))"
echo "GEM	$(echo_if $(program_is_installed gem))"
echo 
printf "Note: Please install dependency which is in \e[31m✘ ${1}"
echo  -e "\033[0m"



#!/bin/bash

# LoadGIT 1.0
# https://github.com/gmasson/loadgit

# COLORS

red="\033[1;31m"
green="\033[1;32m"
blue="\033[1;34m"

bgred="\033[41;1;37m"
bggreen="\033[42;1;37m"
bgblue="\033[44;1;37m"

it_is_color="\033[0m"


echo ""
echo -e "$blue LoadGIT 1.0 $it_is_color"

# ----------------------------------------
# HELP
# ----------------------------------------

function help() {
  echo ""

  echo -e "$bgblue Atalhos $it_is_color"
  echo "----------------------------------------"
  echo -e "$green atalho $it_is_color - Descrição do Atalho"

  echo ""

  echo -e "$bgblue Outras $it_is_color"
  echo "----------------------------------------"
  echo -e "$green exit $it_is_color - Sair do LoadGIT"

  menu
}

# ----------------------------------------
# Comandos
# ----------------------------------------

function init() {
  echo ""
  git init
  echo ""
  echo -e "$green OK $it_is_color"
  menu
}

function send() {
  echo ""
  git status
  git add --all
  git commit -m "Updates"
  git push origin master
  echo ""
  echo -e "$green OK $it_is_color"
  menu
}

function status() {
  echo ""
  git status
  echo ""
  echo -e "$green OK $it_is_color"
  menu
}

function pull() {
  echo ""
  git pull
  echo ""
  echo -e "$green OK $it_is_color"
  menu
}


# ----------------------------------------
# ...
# ----------------------------------------

function error() {
  echo ""
  echo -e "$red Oops, Invalid command, try again! $it_is_color"
  echo "Make sure that the Caps Lock is enabled"
  menu
}

function out() {
  echo ""
  echo "Thank you for using LoadGIT!"
  echo -e "$red Closing [...] $it_is_color"
  echo ""
}

# ----------------------------------------
# Start menu
# ----------------------------------------

menu() {
  echo ""

  read -p ">> " pack;

  case $pack in
    help) help ;;
    # Commands
    init) init ;;
    send) send ;;
    status) status ;;
    pull) pull ;;
    # Exit Program
    exit) out ;;
    out) out ;;
    close) out ;;
    # Others
    *) error ;;
  esac
}

menu

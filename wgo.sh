#!/bin/bash

# WorkGo 1.0
# https://github.com/gmasson/WorkGo

# COLORS
red="\033[1;31m"
green="\033[1;32m"
fcolor="\033[0m"

# ----------------------------------------

function status() {
  echo ""
  git status
  echo ""
  echo -e "$green OK $fcolor"
  menu
}

function commit() {
  echo ""
  git commit -m "Update"
  echo ""
  echo -e "$green OK $fcolor"
  menu
}

function pull() {
  echo ""
  git pull
  echo ""
  echo -e "$green OK $fcolor"
  menu
}

function push() {
  echo ""
  git push origin master
  echo ""
  echo -e "$green OK $fcolor"
  menu
}

function pushb() {
  echo ""
  read -p "Branch: " branch;
  echo ""
  git push origin $branch
  echo ""
  echo -e "$green OK $fcolor"
  menu
}

function send() {
  echo ""
  git status
  git add --all
  git commit -m "Updates"
  git push origin master
  echo ""
  echo -e "$green OK $fcolor"
  menu
}

function init() {
  echo ""
  git init
  echo ""
  echo -e "$green OK $fcolor"
  menu
}

function ssh() {
  echo ""
  ssh root@216.239.53.99
  echo ""
  echo -e "$green OK $fcolor"
  menu
}

# ----------------------------------------

function error() {
  echo ""
  echo -e "$red Oops, Invalid command, try again! $fcolor"
  echo "Make sure that the Caps Lock is enabled"
  menu
}

function out() {
  echo ""
  echo "Thank you for using WorkGo!"
  echo -e "$red Closing [...] $fcolor"
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
    st) status ;;
    add) add ;;
    com) commit ;;
    pull) pull ;;
    push) push ;;
    push-b) pushb ;;
    send) send ;;
    init) init ;;
    ssh) ssh ;;
    # Exit Program
    exit) out ;;
    out) out ;;
    close) out ;;
    # Others
    *) error ;;
  esac
}

menu

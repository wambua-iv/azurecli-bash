#! /bin/bash

read -p 'Resource group name: ' rgname
read -p 'Resource group location: ' rglocation

export rgname rglocation

./createLB.sh
#!/bin/bash

#
## Project : GitProjectManagementTool
##
## Creator : Nathan Hautbois
##
## Contributors :
##
## Date : 05/09/2017
#

#
## Version 1.0
#

function make_Alias() {
    for link in `ls -A $1`
    do
        alias $link="cd $1/$link"
    done
}

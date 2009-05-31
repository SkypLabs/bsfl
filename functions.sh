#!/bin/bash
# ###########################
# Bash Shell Function Library
# ###########################
#
# Author: Louwrentius <louwrentius@gmail.com>
#
# Copyright © 2010
#
# Released under the curren GPL version.
#
# Description:
#
# This is a shell script library. It contains functions that can be called by
# programs that include (source) this library. 
#
# By simply sourcing this library, you can use all available functions as 
# documented on the projects page.
#
#

BSFL_VERSION=1.10

DEBUG=0   # Debug mode shows more verbose output to screen and log files.

# Logging.
LOGDATEFORMAT="%b %e %Y %H:%M:%S"
LOGFILE=$0.log

# Use colours in output.
RED="tput setaf 1"
GREEN="tput setaf 2"
YELLOW="tput setaf 3"
BLUE="tput setaf 4"
MAGENTA="tput setaf 5"
CYAN="tput setaf 6"
BOLD="tput bold"
DEFAULT="tput sgr0"

RED_BG="tput setab 1"
GREEN_BG="tput setab 2"
YELLOW_BG="tput setab 3"
BLUE_BG="tput setab 4"
MAGENTA_BG="tput setab 5"
CYAN_BG="tput setab 6"

# Declare some vars
START_WATCH=0

show_usage () {
    
    echo "Usage: $0 <paramters>"
    echo
    echo "this is a dummy function. Add an identical function to your own program."
    echo 
    exit 1
}

log () {

    MSG="$1"    # The actual log message. 
    TYPE="$2"   # FATAL ERROR WARNING NOTICE INFO DEBUG.

    DATE=`date +"$LOGDATEFORMAT"`

    if [ -z "$TYPE" ]
    then
        TYPE="    -    "
    fi

    LOGMESSAGE="$DATE - [$TYPE]: $MSG"

    echo "$LOGMESSAGE" >> $LOGFILE

    if [ "$DEBUG" = "1" ]
    then
        echo -e "$LOGMESSAGE"
    fi
}

display_status () {


    function position_cursor () {

        let RES_COL=`tput cols`-12
        tput cuf $RES_COL
        tput cuu1
    }

    STATUS="$1"

    case $STATUS in 

    OK | ok ) 
            STATUS="   OK    "  
            STATUS_COLOUR="$GREEN"
            ;;
    PASSED | passed ) 
            STATUS=" PASSED  "  
            STATUS_COLOUR="$GREEN"
            ;;
    SUCCESS | SUCCESS ) 
            STATUS=" SUCCESS "  
            STATUS_COLOUR="$GREEN"
            ;;
    
    FAILURE | failure | FAILED | failed | ERROR | error)
            STATUS=" FAILURE "  
            STATUS_COLOUR="$RED"
            ;;
    INFO | info | NOTICE | notice)
            STATUS=" NOTICE  "  
            STATUS_COLOUR="$BLUE"
            ;;
    WARNING | warning | WARN )
            STATUS=" WARNING "  
            STATUS_COLOUR="$YELLOW"
            ;;
    esac

    position_cursor
    echo -n "["
    $DEFAULT
    $BOLD
    $STATUS_COLOUR
    echo -n "$STATUS"
    $DEFAULT
    echo "]"
 
}

check_status () {

    ERROR="$?"

    MSG_OK="$1"
    MSG_FAIL="$2"

    if [ "$ERROR" == "0" ]
    then
        if [ ! -z "$MSG_OK" ]
        then
            echo "$MSG_OK"
        fi
        display_status OK
        return 0
    else
        if [ ! -z "$MSG_FAIL" ]
        then
            echo "$MSG_FAIL"
        fi
        display_status FAILLURE
        return 1
    fi
}

msg () {

    if [ -z "$1" ]
    then
        return 1
    fi

    MSG="* $1"
    STATUS="$2"
    COLOUR="$3"

    $DEFAULT
    $COLOUR
    echo "$MSG"
    $DEFAULT
    
    if  [ ! -z "$STATUS" ]
    then 
        display_status "$STATUS"
    fi

    log "$MSG" "$STATUS"
}

bail () {

    ERROR="$?"
    MSG="$1"
    if [ ! "$ERROR" = "0" ]
    then
        echo "$MSG"
        exit 1
    fi
}

exec_cmd () {

    CMD="$1"

    RESULT=$($CMD 2>&1 )
    check_status
    ERROR=$?

    if [ "$ERROR" == "0" ]
    then
        if [ "$DEBUG" == "1" ]
        then
            MESSAGE="$RESULT"
        else
            MESSAGE="Command executed successfuly."
        fi
         
        TYPE=NOTICE
        log "$MESSAGE" $TYPE
    else
        TYPE=ERROR
        log "$RESULT" $TYPE
    fi


    if [ "$DEBUG" == "1" ] 
    then
        echo "$RESULT"
    fi
}

start_watch () {

    START_WATCH="$(date +%s)"
}

stop_watch () {

    STOP="$(date +%s)"
    START="$START_WATCH"

    ELAPSED="$(expr $STOP - $START)"

    REMAINDER="$(expr $ELAPSED % 3600)"
    HOURS="$(expr $(expr $ELAPSED - $REMAINDER) / 3600)"

    SECS="$(expr $REMAINDER % 60)"
    MINS="$(expr $(expr $REMAINDER - $SECS) / 60)"

    echo "Elapsed time (h:m:s): $HOURS:$MINS:$SECS"
}

exists () {

    ITEM="$1"

    if [ -e "$ITEM" ]
    then
        if [ -d "$ITEM" ]
        then
            log "Directory $ITEM exists." INFO
            return 0
        elif [ -f "$ITEM" ]
        then
            log "File $ITEM exists." INFO
            return 0
        else
            log "Filesystem object exists." INFO
            return 0
        fi
    else
        log "The file or directory $ITEM does not exist!" ERROR
        return 1
    fi
}

isset () {

    VAR=$1
    VALUE=$(eval "echo \$$VAR")
    if [ -z "$VALUE" ]
    then
        log "Var $VAR is not set." INFO
        return 1
    else
        log "Var $VAR is set to $VALUE." INFO
        return 0
    fi
}




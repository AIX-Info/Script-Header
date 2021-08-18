#!/usr/bin/bash

#---------------------------------------------------------------------------------------------------
#
# NAME           : CREATE_SCRIPT_HEADER.sh
#
# AUTHOR         : Mike Nixon
#
# VERSION        : 1.0B
#
# COPYRIGHT      : Mike-Nixon 2021
#
# DATE           : 18-08-2021
#
# DESCRIPTION    : Create a default script header
#                : to be use for all scripts
#                :
#
#---------------------------------------------------------------------------------------------------
#
# CHANGES  :
#
# 18/08/2021 - MN - Forced Uppercase Directories & Filenames
#

# set -x # DEBUG
# trap read debug # DEBUG

clear

__BREAK="#---------------------------------------------------------------------------------------------------"
__HASH="#"
__CHANGES="# CHANGES  :"
__DATE=$( date +%d-%m-%y )
__COPYRIGHT="<your name> $( date +%Y )"
__DEBUG="# set -x # DEBUG
# trap read debug # DEBUG
"
__HOME="/home/Scripts"

clear

printf "Enter Required Shell (ksh/bash/csh) : ..............................\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"

read __SHELL

printf "Enter Script Name (exclude .sh)     : ..............................\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"

read __NAME

printf "Enter Author Name                   : ..............................\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"

read __AUTHOR

printf "Enter Version Number                : ..............................\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"

read __VERSION

printf "Enter Description (Line 1/3)        : ..............................\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"

read __DESC1

printf "Enter Description (Line 2/3)        : ..............................\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"

read __DESC2

printf "Enter Description (Line 3/3)        : ..............................\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"

read __DESC3

__POSS_DIR=$( ls -al ${__HOME} | grep ^d | awk '{print $9}' | grep -v "\." | xargs -n2  printf "%-20s%s\n" )

printf "\nWhich directory should the file be created in? : \nOptions are: \n"
printf "${__POSS_DIR}\n"
printf "Option : "

read __DIR

__NEW_DIR=$( echo ${__DIR} | awk '{ print toupper($0) }' )

if [ ! -d "${__HOME}/${__NEW_DIR}" ]
 then
        mkdir ${__HOME}/${__NEW_DIR}
fi

__NAME_NEW=$( echo "${__NAME}" | awk '{ print toupper($0) }' )

printf "#!/usr/bin/${__SHELL}\n" > ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__BREAK}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH} NAME           : ${__NAME_NEW}.sh\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH} AUTHOR         : ${__AUTHOR}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH} VERSION        : ${__VERSION}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH} COPYRIGHT      : ${__COPYRIGHT}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH} DATE           : ${__DATE}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH} DESCRIPTION    : ${__DESC1}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH}                : ${__DESC2}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH}                : ${__DESC3}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__BREAK}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__CHANGES}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__HASH}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "${__DEBUG}\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "clear\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh
printf "\n" >> ${__HOME}/${__NEW_DIR}/${__NAME_NEW}.sh

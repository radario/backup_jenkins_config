#!/usr/bin/env bash
# *USER* - github account
# *REPO* - name of repository for backup

JENKINS_DIR="/var/lib/jenkins"
BACKUP_DIR=$JENKINS_DIR/git_backup
REPO_HOSTNAME="github.com"
REPO_URL="github.com"
REPO_IDENTITYFILE="$JENKINS_DIR/.ssh/jenkins-backup-key"
REPO_NAME="*USER*/*REPO*.git"
GIT_REMOTE="git@$REPO_HOSTNAME:$REPO_NAME"
GIT_BRANCH="master"

function echo_task {
    green='\e[0;32m'
    nocolor='\e[0m'
    echo -e "${green}[$(date)] $@ ${nocolor}"
}

function alert {
    red='\e[0;31m'
    nocolor='\e[0m'
    echo -e "${red}[$(date)] $@ ${nocolor}"
}

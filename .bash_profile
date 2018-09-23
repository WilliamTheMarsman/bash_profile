####################################################################################################
# Development Bash Profile 
####################################################################################################
# date:  
# auth: w. marsman
####################################################################################################
# Description
#   a hog-pog of a bunch of quick bash scripts I use for stuff
####################################################################################################

####################################################################################################
# PATH EXPORTS 
####################################################################################################

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/sbin:$PATH"

####################################################################################################
# ENVIRONMENT EXPORTS 
####################################################################################################

# For virtual environment wrapper - a python project manager
export PROJECT_HOME="/Users/wmarsman/Projects/Python"

# LS colors; doesn't seem to actually work though
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
# bat customization
export BAT_THEME=TwoDark

####################################################################################################
# ALIASES 
####################################################################################################

# ls list all color by default
alias ls="ls -Gla"

# connect to the database by default
alias psql_nsar="psql --host $PSQL_NSAR_HOST:$PSQL_NSAR_PORT $PSQL_NSAR_DB -U $PSQL_NSAR_USER"

####################################################################################################
# FUNCTIONS 
####################################################################################################

# getBundleIdentifier <program.app>
# used to get bundle identifiers for macOSX apps. required for writing custom keyboard shortcuts with Karabiner
getBundleIdentifier()
{
  mdls -name kMDItemCFBundleIdentifier -r $1
  echo ''
}

####################################################################################################
# EXECUTION STATEMENTS 
####################################################################################################

# Improve cdpath to be case-insensitive
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

####################################################################################################
# COMMENTS
####################################################################################################
# Commands I might one day use for something, but for now will exist only as a comment
# This command takes the regex in $1 and runs a command (in this case, ffmpeg) against all matching files
# find . -regex "$1" -print0 | xargs -0 -I % ffmpeg -i % 2>&1 | egrep "(Duration|Bad)"
# The next line updates PATH for the Google Cloud SDK.

# Enable virtualenvwrapper for python - I accidentially broke this 
# source virtualenvwrapper.sh

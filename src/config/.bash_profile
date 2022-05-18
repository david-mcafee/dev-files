#-------------------------------------------------------------------------------
# SETUP
# see README
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# GLOBAL NPM PACKAGES (useful when switching Node versions)
#-------------------------------------------------------------------------------
alias installglobal="npm install --global yarn prettier @aws-amplify/cli verdaccio lighthouse pod speed-test"

# ------------------------------------------------------------------------------
# PATH
# ------------------------------------------------------------------------------

# Homebrew (only needed for M1)
# eval "$(/opt/homebrew/bin/brew shellenv)"

# Visual Studio Code (for `code` command`)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

export PATH=$PATH:~/bin
export PATH=~/.local/bin:~/Library/Python/2.7/bin:$BRAZIL_CLI_BIN:$PATH
export PATH=~/.local/bin:$PATH
export BRAZIL_WORKSPACE_DEFAULT_LAYOUT=short

# Node version management
export N_PREFIX=$HOME
export NODE_BINARY_PATH=/usr/local/bin/node

# Android 
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
export PATH=$HOME/.toolbox/bin:$PATH
export PATH=$HOME/bin:$HOME/.toolbox/bin:$PATH

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# https://docs.aws.amazon.com/corretto/latest/corretto-8-ug/macos-install.html
export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# ------------------------------------------------------------------------------
# STARTUP
# ------------------------------------------------------------------------------
# Always load default directory - LOCAL_ROOT setup explained in README
cd $LOCAL_ROOT


# ------------------------------------------------------------------------------
# ALIAS
# ------------------------------------------------------------------------------

# Regularly used commands
  alias jslocalfirst="yarn && yarn build && yarn link-all && yarn build:esm:watch"
  alias jslocalpost="yarn clean && yarn build && yarn link-all && yarn build:esm:watch"
  alias sample="rm -rf node_modules && yarn && yarn link aws-amplify && yarn link @aws-amplify/datastore && yarn start"
  alias showlink="open ~/.config/yarn/link"
  alias dstest="yarn run test --scope @aws-amplify/datastore"
  alias sampleanalytics="rm -rf node_modules && yarn && yarn link aws-amplify && yarn link @aws-amplify/analytics && yarn start"
  alias sampleall="rm -rf node_modules && yarn && yarn link aws-amplify && yarn link @aws-amplify/analytics && yarn link @aws-amplify/api && yarn link @aws-amplify/api-graphql && yarn link @aws-amplify/api-rest && yarn link @aws-amplify/auth && yarn link @aws-amplify/cache && yarn link @aws-amplify/core && yarn link @aws-amplify/datastore && yarn link @aws-amplify/geo && yarn link @aws-amplify/interactions && yarn link @aws-amplify/predictions && yarn link @aws-amplify/pubsub && yarn link @aws-amplify/storage && yarn link @aws-amplify/ui && yarn link @aws-amplify/ui-components && yarn link @aws-amplify/ui-react & yarn link @aws-amplify/ui-react-v1 && yarn link @aws-amplify/xr && yarn start"
  alias unlinkds="yarn unlink aws-amplify && yarn unlink @aws-amplify/datastore"
  alias linkrn="cp -r $LOCAL_ROOT/amplify-js/packages/datastore/lib-esm $LOCAL_ROOT/samples-origin/amplify-js-samples-staging/samples/react-native/datastore/v2/custom-pk/node_modules/@aws-amplify/datastore/"
  alias pullremoteCPK="git pull upstream ds-custom-pk"

#---------------------------------
# AMPLIFY
#---------------------------------

# TODO: Amplify CLI
  alias ampc="amplify console"
  # amplify env pull --restore

  # https://docs.amplify.aws/lib/graphqlapi/getting-started/q/platform/js#generate-client-types-from-a-graphql-schema
  # amplify import auth
  # amplify codegen
  # amplify update api
  # amplify console api - view the GraphQL API in the appsync console
  # "amplify status" will show you what you've added already and if it's locally configured or deployed
  # "amplify add <category>" will allow you to add features like user login or a backend API
  # "amplify push" will build all your local backend resources and provision it in the cloud
  # "amplify console" to open the Amplify Console and view your project status
  # "amplify publish" will build all your local backend and frontend resources (if you have hosting category added) and provision it in the cloud
  # amplify function build

#---------------------------------
# Git
#---------------------------------

  alias ga="git add -A"
  alias gam="git commit --amend --no-edit"
  alias gc="git commit -m \""
  alias gp="git push"
  alias gb="git branch"
  alias gr="git rebase"
  alias gp="git pull"
  alias gco="git checkout"
  alias gs="git status"
  alias grc="git rebase --continue"
  alias gaam="ga && gam"
  alias gacr="gaam && cr"
  # ttps://docs.github.com/en/github/collaborating-with-pull-requests/working-with-forks/syncing-a-fork
  alias syncfork="git fetch upstream && git checkout master && git merge upstream/master"
  alias scan='git secrets --scan'

  # https://stackoverflow.com/questions/3497123/run-git-pull-over-all-subdirectories 
  # fetch and merge would work if all primary branches were the same, or I parsed the current branch name
  # gitpullall='find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \; -exec git -C {} fetch upstream \; -exec git -C {} checkout master \; -exec git -C {} merge upstream/master \;'
  alias gitpullall='find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull \;'

  alias conflict="git diff --name-only --diff-filter=U"

#---------------------------------
# MISC
#---------------------------------

# login
  alias 1="ssh-keygen"

# Clean
  alias clean="rm -rf node_modules"

# Update Jest Snapshots:
  alias snap="npm run test:jest -- -u"

# Ignore Chrome Security
  alias google="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-web-security --user-data-dir --ignore-certificate-errors &> /dev/null &"

# Directories:
  alias hh="cd ~/"

# Cloud desktop
  alias nds="ninja-dev-sync"
  alias ndsl="ninja-dev-sync -list"
  alias ndsr="ninja-dev-sync -remove"

# MISC:
  alias h="cd ~/"
  alias l="ls"
  alias la="ls -a"
  alias findprocess="ps -ax | grep node"
  alias killnode="killall node"

# JEST:
  alias testwatch="npm run test:watch"

# NOTES REPO
  alias syncnotes="$LOCAL_ROOT/notes/sync.sh"

# Output for public repo
  alias sanitize="$LOCAL_ROOT/notes/sanitize.sh"

# Misc.
alias restart="exec bash -l"
alias goodmorning="cd $LOCAL_ROOT && kinit -f && mwinit -o ; toolbox update & npm update -g & brew update && brew upgrade"
# TODO: alias openall="code && open /Applications/Amazon\ Chime.app /Applications/Slack.app /Applications/Google\ Chrome.app --args 'http://github.com'"
alias env="npx envinfo --system --binaries --browsers --npmPackages --npmGlobalPackages --duplicates"
# TODO: alias closeall="$LOCAL_ROOT/notes/src/scripts/close.sh"
alias v="verdaccio"

# ------------------------------------------------------------------------------
# git notes
# ------------------------------------------------------------------------------

# Example usage: `note TODO` or `note "meeting notes"`
function note { 
  code $LOCAL_ROOT/notes/src/notes/"$(date +'%m-%d-%Y')-$1.md"
  echo "# $1" >> $LOCAL_ROOT/notes/src/notes/"$(date +'%m-%d-%Y')-$1.md"
}

# ------------------------------------------------------------------------------
# DISPLAY
#-------------------------------------------------------------------------------

# COLOR CODES
CYAN='\[\e[1;36m\]'
PURPLE='\[\e[1;35m\]'
WHITE='\[\e[1;37m\]'
RED='\[\e[1;31m\]'
RESET='\[\e[0m\]'

I_AM_ROOT=
ROOT_WARNING="!!!!! ROOT !!!!!"
PREFIX=
SUFFIX="\$"
TITLE_SUFFIX=

MAINCOLOR=${CYAN}
DIRCOLOR=${PURPLE}
TIMECOLOR=${WHITE}

# If id command returns zero, you’re root.
if [ $(id -u) -eq 0 ];
then
   I_AM_ROOT=true
   PREFIX="${ROOT_WARNING} "
   SUFFIX="${ROOT_WARNING} ${SUFFIX}"
   TITLE_SUFFIX=" ${ROOT_WARNING}"
   MAINCOLOR=${RED}
fi

# sets the icon and window titles as 'user@host:/full/directory/path'
# (incorporates root warning)
TITLE_ICON='\e]1;${PREFIX}\u@\h:\w${TITLE_SUFFIX}\a'
TITLE_WINDOW='\e]2;${PREFIX}\u@\h:\w${TITLE_SUFFIX}\a'
PROMPT_TITLE="\[${TITLE_ICON}${TITLE_WINDOW}\]"

# sets the command-line prompt to a nicely color-coded user@host string with
# the last element of the CWD in square brackets, and the time.  Also incorporates
# a root warning by both changing the main color and outputting the warning text.
PROMPT_COMMANDLINE="${MAINCOLOR}${PREFIX}\u@ [${DIRCOLOR}${CUSTOM_DIRECTORY}\$(custom_directory)${MAINCOLOR}] ${MAINCOLOR}${SUFFIX}${RESET}"

# set prompt
export PS1="${PROMPT_COMMANDLINE}\$(parse_git_branch) "

# ------------------------------------------------------------------------------
# CONTEXT
#-------------------------------------------------------------------------------

# displays current git branch
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Show everything after `workplace`
custom_directory() {
	DIRECTORY=$PWD
	NEW_DIRECTORY=${DIRECTORY##*"workplace"}
	echo $NEW_DIRECTORY
}
#   -------------------------------
#   ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Change Prompt
#   ------------------------------------------------------------
export PS1="________________________________________________________________________________\n\w \n: "
export PS2=": "

#   Set Paths and Variables
#   ------------------------------------------------------------
export PATH=/usr/local/bin:/usr/local/share/python:$PATH

case "$OSTYPE" in
    darwin*)
        # Added for MacPorts
        export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

        export BOOST_ROOT=/usr/local/opt/boost149
        export BOOST_INCLUDEDIR=/usr/local/opt/boost149/include
        export BOOST_LIBRARYDIR=/usr/local/opt/boost149/lib
        ;;
esac

#   Set Default Editor
#   ------------------------------------------------------------
export EDITOR=/usr/bin/emacs

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
export BLOCKSIZE=1k

#   -----------------------------
#   MAKE TERMINAL BETTER
#   -----------------------------

#   Add color to terminal
#   ------------------------------------------------------------
case "$OSTYPE" in
    darwin*)
        export CLICOLOR=1
        export LSCOLORS=ExFxBxDxCxegedabagacad
        ;;
esac

#   errred: Make stderr output red
#   ------------------------------------------------------
errred () {
    (set -o pipefail;"$@" 2>&1>&3|sed $'s,.*,\e[31m&\e[m,'>&2)3>&1
}

alias em='emacs -nw'
case "$OSTYPE" in
    darwin*)
        alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
        ;;
esac

#   title:  Rename tabs in Terminal or iTerm
#   Note: iterm2 command is added because shell intregration breaks without it
#   ------------------------------------------------------
function title ()
{
    TITLE=$*;
    export PROMPT_COMMAND='echo -ne "\033]0;$TITLE\007"; iterm2_preexec_invoke_cmd'
}

#   trash: Move something to trash
#   ------------------------------------------------------
trash () {
    mv "$1" ~/.Trash
}

#   -----------------------------
#   Finish Up
#   -----------------------------
source ~/.iterm2_shell_integration.`basename $SHELL`

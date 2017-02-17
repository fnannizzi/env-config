#   -------------------------------
#   ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Change Prompt
#   ------------------------------------------------------------
export PS1='________________________________________________________________________________ \D{%T} \n\w \n: '
export PS2=': '

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

# tab-complete git branches
#   ------------------------------------------------------
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#   -----------------------------
#   Finish Up
#   -----------------------------
source ~/.iterm2_shell_integration.`basename $SHELL`

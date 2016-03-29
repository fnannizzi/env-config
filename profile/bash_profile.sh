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
# Added for MacPorts
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

export BOOST_ROOT=/usr/local/opt/boost149
export BOOST_INCLUDEDIR=/usr/local/opt/boost149/include
export BOOST_LIBRARYDIR=/usr/local/opt/boost149/lib

#   Set Default Editor
#   ------------------------------------------------------------
export EDITOR=/usr/bin/emacs

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
export BLOCKSIZE=1k

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


#   -----------------------------
#   MAKE TERMINAL BETTER
#   -----------------------------
alias em='emacs -nw'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

#   title:  Rename tabs in Terminal or iTerm
#   ------------------------------------------------------
function title ()
{
  TITLE=$*;
  export PROMPT_COMMAND='echo -ne "\033]0;$TITLE\007"'
}

#   trash: Move something to trash
#   ------------------------------------------------------
trash () {
  mv "$1" ~/.Trash
}

#   beep: Make the terminal bell sound
#   Example usage: <long running build command>; beep
#   ------------------------------------------------------
beep() {
  osascript -e 'beep'
}

#   -------------------------------
#   FILE AND FOLDER MANAGEMENT
#   -------------------------------

#   zipf:   To create a ZIP archive of a folder
#   ------------------------------------------------------
zipf () { 
  zip -r "$1".zip "$1" ; 
}

#   cdf:  'Cd's to frontmost window of MacOS Finder
#   ------------------------------------------------------
cdf () {
  currFolderPath=$( /usr/bin/osascript <<EOF
  EOT
  tell application "Finder"
    try
      set currFolder to (folder of the front window as alias)
    on error
      set currFolder to (path to desktop folder as alias)
    end try
    POSIX path of currFolder
  end tell
  EOT
  )
  echo "cd to \"$currFolderPath\""
  cd "$currFolderPath"
}

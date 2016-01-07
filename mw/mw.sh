#   -----------------------------
#   MathWorks-specific 
#   -----------------------------
alias setmac="setmwe -a maci64 pwd"
alias setand="setmwe -a android-arm-32 pwd"
alias setios="setmwe -a ios-arm-64 pwd"

#   -----------------------------
#   Perforce 
#   -----------------------------
#export P4MERGE="/Applications/p4merge.app/Contents/MacOS/p4merge"
export P4MERGE="twdiff --wait"
export EDITOR="edit --wait"
export P4EDITOR="edit --wait"
export P4DIFF="twdiff --wait"

#   -----------------------------
#   Application-specific 
#   -----------------------------
alias xc="open -a /Applications/Xcode6.2.0.app/ "
alias em='/Applications/Emacs_24.3.app/Contents/MacOS/Emacs -nw'
alias emacs='/Applications/Emacs_24.3.app/Contents/MacOS/Emacs -nw'

#   -----------------------------
#   Android Development
#   -----------------------------

# Added for Gradle
export PATH="/sandbox/fnannizz/android/gradle-2.5/bin:$PATH"

cd /sandbox/fnannizz

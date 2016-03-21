#   -----------------------------
#   MathWorks-specific 
#   -----------------------------
alias setmac="setmwe -a maci64 pwd"
alias setand="setmwe -a android-arm-32 pwd"
alias setios="setmwe -a ios-arm-64 pwd"

#   -----------------------------
#   Perforce 
#   -----------------------------
export P4MERGE="/Applications/p4merge.app/Contents/MacOS/p4merge"
export EDITOR="emacs -nw"
export P4EDITOR="emacs -nw"

#   -----------------------------
#   Application-specific 
#   -----------------------------
alias xc="open -a /Applications/Xcode6.2.0.app/ "
alias em='/Applications/Emacs_24.3.app/Contents/MacOS/Emacs -nw'
alias emacs='/Applications/Emacs_24.3.app/Contents/MacOS/Emacs'

#   -----------------------------
#   Android Development
#   -----------------------------
export NDK_ROOT="/sandbox/fnannizz/android/android-sdk/ndk-bundle"
export NDK_TOOL_ROOT="$NDK_ROOT/toolchains/arm-linux-androideabi-4.8/prebuilt/darwin-x86_64/bin"
export SDK_ROOT="/sandbox/fnannizz/android/android-sdk"

alias aadb="$SDK_ROOT/platform-tools/adb"
alias anm="$NDK_TOOL_ROOT/arm-linux-androideabi-gcc-nm"
alias areadelf="$NDK_TOOL_ROOT/arm-linux-androideabi-readelf"
alias aaddr2line="$NDK_TOOL_ROOT/arm-linux-androideabi-addr2line"
alias acppfilt="$NDK_TOOL_ROOT/arm-linux-androideabi-c++filt"

# Added for Gradle
export PATH="/sandbox/fnannizz/android/gradle-2.5/bin:$PATH"

cd /sandbox/fnannizz

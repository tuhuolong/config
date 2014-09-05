#------------ android build start ------------
ulimit -S -n 1024
export PATH=/opt/local/bin:$PATH
# mount the android file image
function mountAndroid { hdiutil attach ~/workspace/android.dmg.sparseimage -mountpoint ~/workspace/AndroidDisk; }
export PATH=/opt/local/libexec/gnubin:$PATH
export GNU_COREUTILS=/opt/local/libexec/gnubin
#------------ android build end ------------



export PATH="$PATH:$HOME/android-tool/android-sdk/platform-tools"
export PATH="$PATH:$HOME/android-tool/android-sdk/tools"
export PATH="$PATH:$HOME/android-tool/android-ndk-r9d"

alias ll="ls -l --color"
alias la="ls -l -a --color"
alias lh="ls -ld .* --color=auto"

# kill process
fkill(){
    ps aux | grep "$1" | grep -v grep | awk '{print $2;}' | while read p; do kill -9 $p; done
}

export CLICOLOR=1
export LSCOLORS=gxfxaxdxcxegedabagacad
export GREP_OPTIONS="--color=auto"

PATH=~/bin:$PATH

PATH=~/program/apache-ant-1.9.3/bin:$PATH



function openEclipse { open -a Eclipse --args -clean -refresh; }

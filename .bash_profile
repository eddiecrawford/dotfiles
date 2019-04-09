alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`"
if [ -n "$BASH_VERSION" ] && [ -f $HOME/.bashrc ];then
    source $HOME/.bashrc
fi

#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#  . $(brew --prefix)/etc/bash_completion
#fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# mount the android file image
mountAndroid() { hdiutil attach ~/android.dmg.sparseimage -mountpoint /Volumes/android; }

# unmount the android file image
umountAndroid() { hdiutil detach /Volumes/android; }


# set the number of open files to be 1024
ulimit -S -n 1024
# Compiler cache
export USE_CCACHE=1
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH=~/bin:$PATH
export PATH=/Users/eddiecrawford/Library/Android/sdk/platform-tools:$PATH
export PATH=/opt/local/bin:$PATH
export PATH=/Users/eddiecrawford/.edscripts:$PATH
export PATH=/Users/eddiecrawford/Library/Python/3.7/bin:$PATH

export ANDROID_HOME=/Users/eddiecrawford/Library/Android/sdk
export customerid=21095199

function gif() {
	ffmpeg -i $1 -pix_fmt rgb24 -r 30 $2	
}

function rgrep {
  first=$1
  shift
  grep --color -I -r "$first" * "$@";
}

alias build-dat-shit="/Users/eddiecrawford/workspace/Ibotta-Android/gradlew assembleDebug | lolcat && catpix -c=x ~/Pictures/diglett.png"

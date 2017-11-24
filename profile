if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

PATH=~/npm/bin:~/Android/Sdk/platform-tools:~/Android/Sdk/tools:$PATH
PATH=$PATH:~/Apps/android-studio/gradle/gradle-3.2/bin/
#ANDROID SDK
export ANDROID_HOME=/home/nmartin/Android/Sdk
#app engine sdk
PATH=$PATH:~/Apps/google_appengine
#php 
PATH=$PATH:~/Apps/php/bin
JAVA_HOME=~/Apps/jre1.8.0_51/bin
PATH=$PATH:$JAVA_HOME
PATH="/usr/local/heroku/bin:$PATH"
PATH=$PATH:~/.gem/ruby/2.3.0/bin
PATH=$PATH:~/.gem/ruby/2.4.0/bin

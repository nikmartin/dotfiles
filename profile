
PATH=~/npm/bin:~/Android/Sdk/build-tools/27.0.1:~/Android/Sdk/platform-tools:~/Android/Sdk/tools:$PATH
#ANDROID SDK
export ANDROID_HOME=/home/nmartin/Android/Sdk
#app engine sdk
PATH=$PATH:~/Apps/google_appengine
#php 
PATH=$PATH:~/Apps/php/bin
JAVA_HOME=~/Apps/jre1.8.0_51/bin
PATH=$PATH:$JAVA_HOME
PATH=$PATH:~/.gem/ruby/2.3.0/bin
PATH=$PATH:~/.gem/ruby/2.4.0/bin

#arduino cli
PATH=$PATH:~/Projects/Arduino/bin

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

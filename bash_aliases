# ls
  #alias ll="ls -ahl"
  #alias ls="ls -G"


# git
  #alias gdiff="git diff | gitx"
  #alias gm="git merge"
  #alias gs="git status"
  #function gc() { git commit -m $1; }
  #function gppo() { git pull origin $1;git push origin $1; }


# symfony
  #alias s="./symfony"
  #alias sbar="./symfony doctrine:build --all --and-load"
  #alias scc="./symfony cc"
  #alias sccbar="./symfony cc;./symfony doctrine:build --all --and-load --no-confirmation"
  #alias sdl="./symfony doctrine:data-load"
  #function sdmod() { ./symfony doctrine:generate-module --with-show --non-verbose-templates $1 $2 $3; }
  #function soa() { ./symfony optimize:assets $1;./symfony cc; }


# apache/mamp/php
  #alias hosts="sudo vim /etc/hosts"
  #alias mampr="/Applications/MAMP/bin/apache2/bin/apachectl restart"
  #alias phpini="sudo vim /Applications/MAMP/conf/php5.3/php.ini"
  #alias vhosts="sudo vim /Applications/MAMP/conf/apache/httpd.conf"


# etc
  #alias bashrc="vim ~/.bashrc"
  #alias vimrc="vim ~/.vimrc"
  #alias dl="curl -O"
  #alias dspace="du -k -s -h * | sort -k1 -g -r"
  #alias flushcache="sudo dscacheutil -flushcache"
  #alias reload="source ~/.bashrc"

  # `.. 3` will `cd ../../..`
  #function ..() {
      #local arg=${1:-1}; while [ $arg -gt 0 ]; do
          #local dir="$dir../"; arg=$(($arg - 1))
      #done
      #cd $dir >& /dev/null;
  #}

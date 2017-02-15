
#   Set Paths and Variables
#   ------------------------------------------------------------
export PATH=/usr/local/bin:/usr/local/share/python:$PATH
export PATH=~/Library/Python/2.7/bin:$PATH
export PATH=/usr/local/opt/mysql\@5.6/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export ES_HOME=/Users/francesca/Developer/elasticsearch-1.7.4
export AUTH0_SECRET=15525a96730bfd8725d34652351d6aab1a200dc668a5d2b298ba4b8bc970acbe

export CHT_PROJECTS_DIR="$HOME"/Projects
export CHT_ENG="$HOME"/Projects/cht_eng
export JAVA_HOME="$(/usr/libexec/java_home --version 1.7)"
export RAILS_ENV=development
export TZ=UTC
export USE_CHT_SRC=1
source "$CHT_ENG"/tools/bin/.chtrc
git branch --no-color 2> /dev/null | sed -e '/^[^<200b>*]/d' -e 's/*<200b> \(.*\)/(\1)/' -e 's/^/\ /'

}

function proml {

  local        BLUE="\[\033[0;34m\]"

  local         RED="\[\033[0;31m\]"

  local   LIGHT_RED="\[\033[1;31m\]"

  local       GREEN="\[\033[0;32m\]"

  local LIGHT_GREEN="\[\033[1;32m\]"

  local       WHITE="\[\033[1;37m\]"

  local  LIGHT_GRAY="\[\033[0;37m\]"

  local       BLACK="\[\033[0;00m\]"

  case $TERM in

    xterm*)

    TITLEBAR='\[\033]0;\u@\h:\w\007\]'

    ;;

    *)

    TITLEBAR=""

    ;;

  esac

export PS1="${TITLEBAR}\

\[\033[01;32m\]\u@\h\[\033[00m\] [ \[\033[01;34m\]\W\[\033[00m\] ]$LIGHT_RED\$(parse_git_branch)$BLACK \$ "

PS2='> '

PS4='+ '

}

proml

function ls --wraps=exa --wraps='/bin/ls --hyperlink=auto --color=auto ' --wraps='gls --hyperlink=auto --color=auto' --description 'alias ls=gls --hyperlink=auto --color=auto'
  set -l os (uname)
  if test "$os" = Darwin
    gls --hyperlink=auto --color=auto $argv
  else if test "$os" = Linux
    command ls --hyperlink=auto --color=auto $argv
  end
        
end

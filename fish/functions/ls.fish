function ls --wraps=exa --wraps='/bin/ls --hyperlink=auto --color=auto ' --wraps='gls --hyperlink=auto --color=auto' --description 'alias ls=gls --hyperlink=auto --color=auto'
  gls --hyperlink=auto --color=auto $argv
        
end

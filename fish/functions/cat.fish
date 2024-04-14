function cat --wraps=bat --description 'alias cat=bat'
  set -l os (uname)
  if test "$os" = Darwin
    bat $argv
  else if test "$os" = Linux
    batcat $argv
  end
        
end

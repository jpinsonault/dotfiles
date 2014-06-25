 function amacs
 {
     # Create the files as needed -- not as good as raw emacs, but acceptable
     for f in "$@"
     do
 	test -e $f || touch $f
     done
     open -a /Applications/Emacs.app "$@"
 }

#alias emacs='open -a /Applications/Emacs.app $1'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


PROMPT_COMMAND='PS1="\[\033[0;33m\][\!]\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`[\u.\h: \`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\`]\$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"'
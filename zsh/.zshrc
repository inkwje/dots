# https://zsh.sourceforge.io/Doc/Release/Expansion.html#Filename-Generation

for module in $ZDOTDIR/conf.d/*.zsh(N); do
    source $module
done

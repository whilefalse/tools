# Dotfiles: vim, tmux, zsh etc
for x in `ls -A dotfiles`; do
  cmd="ln -s"
  if [ "$1" == "-f" ]; then
    cmd+="f"
  fi
  cmd+=" `pwd`/dotfiles/$x $HOME/$x"
  echo $cmd
  $cmd
done

# VS Code
for x in `ls vscode`; do
  cmd="ln -s"
  if [ "$1" == "-f" ]; then
    cmd+="f"
  fi
  cmd+=" `pwd`/vscode/$x \"$HOME/Library/Application Support/Code/User/$x\""
  echo $cmd
  eval $cmd
done

# Karabiner
cmd="ln -s"
if [ "$1" == "-f" ]; then
  cmd+="f"
fi
cmd+=" `pwd`/config/karabiner.json $HOME/.config/karabiner/karabiner.json"
echo $cmd
$cmd

echo "\n=== MANUAL STEPS ==="
# iTerm2
echo "Now go to iTerm Prferences, check \"Load preferences from a custom folder or URL\" and enter `pwd`/config"

# Dotfiles: vim, tmux, zsh etc
echo "=== Dot files ==="
for x in `ls -A dotfiles`; do
  cmd="ln -sh"
  if [ "$1" == "-f" ]; then
    cmd+="f"
  fi
  cmd+=" `pwd`/dotfiles/$x $HOME/$x"
  echo $cmd
  $cmd
done

# VS Code
echo "\n=== VS Code ==="
for x in `ls vscode`; do
  cmd="ln -s"
  if [ "$1" == "-f" ]; then
    cmd+="f"
  fi
  cmd+=" `pwd`/vscode/$x \"$HOME/Library/Application Support/Code/User/$x\""
  echo $cmd
  eval $cmd
done
cmd="defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false"
echo $cmd
$cmd

# Homebrew
echo "\n=== HomeBrew ==="
for x in `cat brew.txt`; do
  cmd="brew install $x"
  echo $cmd
  $cmd
done

# Brew casks
echo "\n=== HomeBrew Casks ==="
for x in `cat brew.cask.txt`; do
  cmd="brew cask install $x"
  echo $cmd
  $cmd
done

# Karabiner
echo "\n=== Karabiner ==="
cmd="ln -s"
if [ "$1" == "-f" ]; then
  cmd+="f"
fi
cmd+=" `pwd`/config/karabiner.json $HOME/.config/karabiner/karabiner.json"
echo $cmd
$cmd

echo "\n=== MANUAL STEPS ==="
# iTerm2
echo "1. Go to iTerm Prferences, check \"Load preferences from a custom folder or URL\" and enter `pwd`/config"
echo "2. Increase Key Repeat and decrease Delay Until Repeat in Sytem Preferences"
echo "3. Install Oh My Zsh if it's not installed. Then restore ~/.zshrc"
echo "4. Set Zsh as login shell if it's not already"

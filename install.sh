for x in `ls -A dotfiles`; do
  cmd="ln -s"
  if [ "$1" == "-f" ]; then
    cmd+="f"
  fi
  cmd+=" `pwd`/dotfiles/$x $HOME/$x"
  echo $cmd
  $cmd
done

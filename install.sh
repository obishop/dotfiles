names=(vim vimrc bash_profile bashrc gitconfig tmux.conf)

echo "Installing dotfiles..."

for name in ${names[@]}; do
  target="$HOME/.$name"
  if [ -e "$target" ]; then
    echo "$target already exists."
  else
    echo "Linking $target to $PWD/$name"
    ln -s "$PWD/$name" "$target"
  fi
done

echo "Done."

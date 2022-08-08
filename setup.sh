echo "Test"

DOT_FILES=(
  .gitconfig
)

echo "Linking dotfile..."
for FILE in ${DOT_FILES[@]}; do
  ln -sfv $HOME/dotfiles/$FILE ~/$FILE;
done

# install NvChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
ln -sf $HOME/dotfiles/nvim/lua/custom ~/.config/nvim/lua/custom;

DIRS=(
  fish
  kitty
)

# echo "Linking config dir..."
for DIR in ${DIRS[@]}; do
  ln -sf $HOME/dotfiles/$DIR ~/.config/$DIR;
done

# install Homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle --file=$HOME/dotfiles/Brewfile


if test $(which asdf); then
  asdf plugin add nodejs
  asdf install nodejs latest
  asdf global nodejs latest

  asdf plugin add erlang
  asdf install erlang latest
  asdf global erlang latest
  
  asdf plugin add elixir
  asdf install elixir latest
  asdf global elixir latest
fi

# install rust
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

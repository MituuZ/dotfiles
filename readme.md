# dotfiles

- [Vim](.vimrc)
- [IntelliJ IDEA (IdeaVim)](.ideavimrc)
- [Obsidian](.obsidian.vimrc)
- [Git](.gitrc)
- [zsh](.zshrc)
- [bash](.bashrc)
- [Awesome WM](rc.lua)

## Sym links

Run from this directory

```bash
ln -s .ideavimrc ~/.ideavimrc
ln -s .vimrc ~/.vimrc
ln -s .zshrc ~/.zshrc
ln -s rc.luad ~/.config/awesome/rc.lua
```

## Git

Setup gitrc

```bash
echo '[include]' >> ~/.gitconfig
echo "    path = $(pwd)/.gitrc" >> ~/.gitconfig
```

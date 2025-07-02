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
ln -s /path/to/.ideavimrc /path/to/.ideavimrc
ln -s /path/to/.vimrc /path/to/.vimrc
ln -s /path/to/.zshrc /path/to/.zshrc
ln -s /path/to/rc.lua /path/to/.config/awesome/rc.lua
```

## Git

Setup gitrc

```bash
echo '[include]' >> ~/.gitconfig
echo "    path = $(pwd)/.gitrc" >> ~/.gitconfig
```

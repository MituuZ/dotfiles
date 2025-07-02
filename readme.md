# dotfiles
- [Vim](.vimrc)
- [IntelliJ IDEA (IdeaVim)](.ideavimrc)
- [Obsidian](.obsidian.vimrc)
- [Git](.gitrc)
- [zsh](.zshrc)
- [bash](.bashrc)
- [Awesome WM](rc.lua)
- [Zed](zed)

# Sym links
```bash
ln -s ~/IdeaProjects/vimrc/.ideavimrc ~/.ideavimrc
ln -s ~/IdeaProjects/vimrc/.vimrc ~/.vimrc
ln -s ~/IdeaProjects/vimrc/.zshrc ~/.zshrc
ln -s ~/IdeaProjects/vimrc/rc.luad ~/.config/awesome/rc.lua
```

# Git
Setup gitrc

```bash
echo '[include]' >> ~/.gitconfig
echo '    path = ~/IdeaProjects/vimrc/.gitrc' >> ~/.gitconfig
```
   
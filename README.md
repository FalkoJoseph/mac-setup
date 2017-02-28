Mac setup
=========

Setup a new macOS machine with ease.

How to install
--------------

0. Create a `/Code` directory. This is where you'll place your projects.
1. Install XCode + Git
2. Git clone `mac-setup` on your computer
3. Git clone `dotfiles` on your computer
3. Install iTerm2, set the theme to `[One Dark](https://github.com/anunez/one-dark-iterm)` and home directory to `/Code`
4. Set zsh as your default shell `chsh -s $(which zsh)`
5. Run mac-setup `with bin/install.sh`
6. Install the Thoughtbot dotfiles (https://github.com/thoughtbot/dotfiles)
7. Install your personal dotfiles with `git clone <repo> dotfiles-local` and run `rcup` again
8. Install `ohmyzsh` (https://github.com/robbyrussell/oh-my-zsh)

# dotfiles

This was set up with the help of Jake Eisler's article: [Manage Your Dotfiles Like a Superhero](https://www.jakewiesler.com/blog/managing-dotfiles)

1. Clone into ~/.dotfiles
```bash
$ git clone git@github.com:AyushSingh13/dotfiles.git ~/.dotfiles
```

2. Run `stow` for required dotfiles, e.g.:
```bash
$ cd ~/.dotfiles

$ stow tmux
$ stow vim

# For neovim, make sure to run :PlugInstall **after** running the stow command and starting up nvim for the first time
$ stow nvim
```

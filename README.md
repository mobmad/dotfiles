# dotfiles
My dotfiles for personalizing my system. Borrowed and inspired from [uggedal](https://github.com/uggedal/dotfiles) and [kjbekkelund](https://github.com/kjbekkelund/dotfiles/).

[Read more on the concept of dotfiles](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/)

## Install
`cd ~ && git clone git@github.com:mobmad/dotfiles.git && cp -r dotfiles/ . && rm -rf dotfiles`

## Pros
Simple - no need to symlink, as the home directory itself is a git repo. To avoid accidental commits of Documents, .ssh and other stuff under ~, the [.gitignore](.gitignore) is set up to ignore all files and uses inverted patterns to whitelist specific files for inclusion. [.gitignore_global](.gitignore_global) is configured to be used for all git repos in [.gitconfig](.gitconfig) 

## Cons
Possible confusion if you run `git status` on `~/some-directory-not-under-git` will report status for the home repo. Will also affect `PS1` if you have git enabled prompts. Note: this has no effect on `~/some-directory-UNDER-its-own-git-repo`, as `git status` and other commands will no traverse up to `~`.

## What's the load order for .profile, .bash_profile and .bashrc, etc?
Read [Zsh/Bash startup files loading order (.bashrc, .zshrc etc.)](http://shreevatsa.wordpress.com/2008/03/30/zshbash-startup-files-loading-order-bashrc-zshrc-etc/) for a good explaination.

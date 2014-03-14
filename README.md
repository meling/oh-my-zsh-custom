oh-my-zsh-custom
================

My oh-my-zsh customizations

Usage
-----

## Install

```sh
cd ~/.oh-my-zsh
git rm -rf custom
git submodule add https://github.com/meling/oh-my-zsh-custom.git custom
git commit -m 'Inserted customized zsh stuff'
```

## Update custom
```sh
cd ~/.oh-my-zsh/custom
git pull
```

## Pushing changes (if made in the submodule folder)
```sh
cd ~/.oh-my-zsh/custom
```
Make changes to your custom files.
```sh
git commit -a -m 'your commit msg'
git push
```


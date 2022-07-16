# Dotfiles

My personal dotfiles repo, managed using stow. See below for setup. 
Use following ansible playbook beforehand to provision system: [linux-workstation-bootstrap](https://github.com/a-tofft/linux-workstation-bootstrap)

# Installation

```shell
$ git clone git@github.com:a-tofft/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ stow -t ~ */
```

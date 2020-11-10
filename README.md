# Gary J's Dotfiles
This is a simple yet intuitive configuration suite for GNU/Linux
distributions, which uses i3-gaps for desktop window management
and has some nifty convenience features. Inspired by the work of
Luke Smith.

## Prerequisites
This set of dotfiles assumes you have a working GNU/Linux installation with
the following programs installed:

+ An X-compatible terminal, such as [xterm](https://invisible-island.net/xterm) or [st](https://st.suckless.org)
+ [i3-gaps](https://github.com/Airblader/i3): A tiling window manager for X
+ [picom](https://github.com/yshui/picom): Compositor for X
+ [ranger](https://github.com/ranger/ranger): Terminal-based file manager
+ [neofetch](https://github.com/dylanaraps/neofetch): Terminal-based system
  information program
+ [Vim](https://www.vim.org): Terminal-based text editor (or,
  alternatively, [neovim](https://neovim.io))
+ [Zathura](https://pwmt.org/projects/zathura): Document viewer

## Notable Changes
My configuration files attempt to prioritize workflow optimization and
aesthetic quality. These two goals are achieved by the following modifications:

* Vim-like controls across all applications, including **i3-gaps**
* Startup commands in *.xinitrc* to automatically load the *.Xresources*
  configuration file, start **Picom**, and launch **i3-gaps**.
* *.bashrc* / *zshrc* function to allow **ranger** to change
  directories upon exiting, along with useful alias commands
* Vim commands to enable syntax, indentation, and relative numbering, as well
  as enforce an appropriate text width
* An attractive and classy [iceberg](https://cocopon.github.io/iceberg.vim/)
  color scheme, loaded by *.Xresources*

I hope you all enjoy these configurations, which are the result of hours of
minor tweaks over the months! Feel free to fork and upload your own variations
of these settings-- it's free software, babyyyy

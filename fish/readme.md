# Fish shell
config file for [The user-friendly command line shell](http://fishshell.com/)

config.fish and function folder should be copied/moved to ~/.config/fish folder.

## Screenshots
![](./fish.png)

## Dependency
### ~~powerline font~~
	wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
	sudo mv PowerlineSymbols.otf /usr/share/fonts/
	sudo fc-cache -vf
	sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
https://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin


### Nerdfonts (DroidSansMono)
https://nerdfonts.com/

The installation of font is similar

## Todo
- WSL font support (maybe)

## Ref
- [Oh My Fish Themes](https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md)

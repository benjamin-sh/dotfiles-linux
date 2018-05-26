# dotfiles-mac

### configure dock

The following two lines delete the current Dock apps and folders;
```
$ defaults delete com.apple.dock persistent-apps
$ defaults delete com.apple.dock persistent-others
```

Exemple to add Safari
```
$ defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Safari.app</string><key>_CFURLStringType</key>
<integer>0</integer></dict></dict></dict>'
```
In Dock : chrome, sublime text, Terminal, Moniteur d'activité

### Install homebrew
```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Install Packages Mac
```
$ brew cask install google-chrome

$ brew install chrome-cli

$ brew cask install sublime-text

# $ brew install nodejs
$ touch ~/.bash_profile
$ brew install nvm

$ brew cask install mamp

$ brew cask install libreoffice

$ brew cask install thunderbird

$ brew cask install sketch
```

### Install Packages Sublime-Text-3
```
$ mkdir -p ~/.config/sublime-text-3/Installed\ Packages
```
#### Packages
https://packagecontrol.io/packages/Emmet
https://packagecontrol.io/packages/Babel

### Config NVM


### Config MAMP
```
$ mkdir ~/Sites

More at https://medium.com/@JohnFoderaro/how-to-set-up-apache-in-macos-sierra-10-12-bca5a5dfffba



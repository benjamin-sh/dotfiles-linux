# dotfiles-mac

### Install homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### Install Packages Mac
```
brew cask install google-chrome
brew install chrome-cli
brew cask install github
brew install nvm
nvm install --lts
brew cask install visual-studio-code
brew cask install libreoffice
brew cask install postman
brew install mysql
brew install phpmyadmin
brew install mysql
brew cask install mysqlworkbench
```

### configure dock

The following two lines delete the current Dock apps and folders;
```
defaults delete com.apple.dock persistent-apps
defaults delete com.apple.dock persistent-others
```

Exemple to add Safari App to the dock
```
defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Safari.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
```

### Show all files
```
defaults write com.apple.finder AppleShowAllFiles TRUE
```

### Reload Finder and Dock
```
killall Finder
killall Dock
```

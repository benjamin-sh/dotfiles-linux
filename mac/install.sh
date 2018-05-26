#!/bin/bash

echo '------- Install Homebrew started -------'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo '------- Install Homebrew finished -------'

echo '------- Install apps : Chrome, chrome-cli, sublime-text, nodejs, mamp, libreoffice, thunderbird -------'
brew cask install google-chrome
brew install chrome-cli
brew cask install sublime-text
#brew install nodejs //Is it necessary when nvm is installed ?
brew install nvm
mkdir ~/.nvm
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bash_profile
echo '  . "/usr/local/opt/nvm/nvm.sh"' >> ~/.bash_profile
brew cask install mamp
brew cask install libreoffice
brew cask install thunderbird
brew cask install sketch
brew cask install filezilla
brew cask install teamviewer
echo '------- Install apps finished -------'

echo '------- Config MAMP -------'
mkdir $HOME/Sites

echo '------- Update Dock started -------'
defaults delete com.apple.dock persistent-apps
defaults delete com.apple.dock persistent-others

defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Google Chrome.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Sublime Text.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/LibreOffice.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Utilities/Activity Monitor.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Thunderbird.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>$HOME/Sites</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Sketch.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

echo '------- Update Dock finished -------'

killall Dock

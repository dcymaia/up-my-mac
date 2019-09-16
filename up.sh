echo "up"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew update
brew tap caskroom/cask

brew install python3
alias python=/usr/local/bin/python3

brew install yarn

sudo easy_install pip
pip install github

brew install bash-completion

brew cask install google-chrome
brew cask install 1password
brew cask install slack

brew cask install sublime-text 
brew cask install visual-studio-code
brew cask install mysqlworkbench	
brew cask install docker
brew cask install postman

brew cleanup

# https://draculatheme.com/terminal/
git clone https://github.com/dracula/terminal-app.git

git config --global user.name "Danilo Maia"
git config --global user.email "dcymaia@gmail.com"
#git config --global --list

echo "🍺 all done!"

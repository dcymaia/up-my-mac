RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[0;33m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

# printf "I ${RED}love${NC} ${GREEN}Stack${NC} Overflow\n"
# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

printf "\n${GREEN}==> UP MY MAC${NC}\n\n"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew update
brew tap caskroom/cask

brew install python3
alias python=/usr/local/bin/python3

brew install yarn

sudo easy_install pip

brew install ansible
brew install bash-completion

brew cask install google-chrome
brew cask install 1password
brew cask install slack

brew cask install sublime-text 
brew cask install visual-studio-code
brew cask install mysqlworkbench	
brew cask install docker
brew cask install postman
brew cask install sourcetree
brew cask install pycharm

brew cask install spotify

brew install pyenv
brew install pyenv-virtualenv
pyenv install 3.6.0

printf "\n${PURPLE}==>${NC} Set .bashrc\n"
touch ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc
printf "\n${GREEN}==>${NC} Finished set .bashrc\n"

brew cleanup

if [ -d "terminal-app" ]; then
	printf "\n${GREEN}==>${NC} 'terminal-app' already exists and is not an empty directory\n"
else
	# https://draculatheme.com/terminal/
	printf "\n${PURPLE}==>${NC} Get 'terminal-app'\n"
	git clone https://github.com/dracula/terminal-app.git
	printf "\n${GREEN}==>${NC} Finished get 'terminal-app'\n"
fi

git config --global user.name "Danilo Maia"
git config --global user.email "dcymaia@gmail.com"
#git config --global --list

printf "\n\n🍺 ${GREEN}ALL DONE!${NC}\n"

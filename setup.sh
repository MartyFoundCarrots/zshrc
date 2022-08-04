#!/bin/bash

echo "Did you install zsh?"
echo "apt update &&  apt install zsh -y"
read -r -p "Are You Sure? [Y/n] " input
 
case $input in
      [yY][eE][sS]|[yY])
            echo "You say Yes"
	         cp zshrc ~/.zshrc
				chsh -s $(which zsh)
				source ~/.zshrc	
				echo "Logout and back in"

            ;;
      [nN][oO]|[nN])
            echo "You say No"
            ;;
      *)
            echo "Invalid input..."
            exit 1
            ;;
esac

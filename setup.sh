#!/bin/bash

echo "Did you install zsh?"
echo "apt update &&  apt install zsh -y"
read -r -p "Are You Sure? [Y/n] " input
 
case $input in
      [yY][eE][sS]|[yY])
            echo "You say Yes"
	         cp zshrc ~/.zshrc
            sudo unzip zsh-autosuggestions.zip -d /usr/share/
            sudo unzip zsh-syntax-highlighting.zip -d /usr/share/
            sudo chown -R root:root /usr/share/zsh-autosuggestions
            sudo chown -R root:root /usr/share/zsh-syntax-highlighting
				chsh -s $(which zsh)
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

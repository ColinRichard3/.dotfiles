# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim. These configurations include:
- Enabling line numbers
- Setting default indentation to four spaces
- Enables syntax highlighting
## .bashrc
This is my custom .bashrc configuration for Bash. These configurations include:
- Setting the prompt to display the current working directory
- Configures aliases for frequently used commands
## linux.sh
This is a script that configures my custom linux environment, including vim and bash. This script performs the following tasks:
- Checks that the operating system is Linux
- Creates a '.TRASH' directory in the home directory
- Renames the '.vimrc' file to '.bup vimrc' and creates a new '.vimrc' file with custom configurations.
- Appends the line 'source ~/.dotfiles/etc/bashrc custom' to the end of the '.bashrc' file.
## cleanup.sh
This is a script that undos the changes made by 'linux.sh'. It performs the following tasks:
- Removes the '.vimrc' file from the home directory.
- Removes the line 'source ~/.dotfiles/etc/bashrc custom' from the '.bashrc' file.
- Removes the '.TRASH' directory from the home directory.
## Makefile
Contains two targes: 'linux' and 'clean'.
- The linux target runs the 'linux.sh' script. It has a dependency on the 'clean' target. 
- The clean target runs the 'cleanup.sh' script that removes the configurations installed by 'linux.sh'. The clean target is run before 'linux.sh' to ensure that any existing configurations are cleaned up before the new configurations are implemented. 


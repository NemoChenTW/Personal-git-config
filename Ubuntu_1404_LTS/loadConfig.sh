#/bin/bash

#Backup old config
./backup.sh

# Save git global config

cp ./.gitconfig ~/.gitconfig


# Save gitk config

cp -pr ./git ~/.config/

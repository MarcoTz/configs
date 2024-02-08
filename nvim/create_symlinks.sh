#!/bin/bash

rm ~/.config/nvim/init.vim
ln -s $PWD/init.vim ~/.config/nvim/init.vim

rm ~/.config/nvim/coc-settings.json
ln -s $PWD/coc-settings.json ~/.config/nvim/coc-settings.json

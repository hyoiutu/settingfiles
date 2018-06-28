#!/bin/sh
export SETTING_FILES_PATH="${HOME}/LocalRepositories/github/settingfiles"
ln -sf ${SETTING_FILES_PATH}/.latexmkrc ~/.latexmkrc
ln -sf ${SETTING_FILES_PATH}/init.vim ~/.config/nvim/init.vim
ln -sf ${SETTING_FILES_PATH}/plugins.toml ~/.config/nvim/dein/plugins.toml
ln -sf ${SETTING_FILES_PATH}/plugins_lazy.toml ~/.config/nvim/dein/plugins_lazy.toml
ln -sf ${SETTING_FILES_PATH}/.bashrc ~/.bashrc
ln -sf ${SETTING_FILES_PATH}/.bash_profile ~/.bash_profile

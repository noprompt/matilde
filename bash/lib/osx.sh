function osx.disable-character-accent-menu {
    defaults write -g ApplePressAndHoldEnabled -bool false
}

function osx.enable-character-accent-menu {
    defaults write -g ApplePressAndHoldEnabled -bool true
}

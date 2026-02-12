source /usr/share/cachyos-fish-config/cachyos-config.fish

export MOZ_ENABLE_WAYLAND=1

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

function fish_greeting
    fastfetch --logo-color-1 red --logo-color-2 white -l ~/dotfiles/fetch-logos/thinkpad.txt --logo-padding-top 2 --logo-padding-left 1 --color-keys red
end

if not pgrep -u (whoami) ssh-agent >/dev/null
    ssh-agent -c | source
end

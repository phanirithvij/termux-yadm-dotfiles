if status is-interactive
    # Commands to run in interactive sessions can go here
end

cmp -s $HOME/.hushlogin $HOME/../usr/etc/motd
if [ $status != 0 ]
    tee $HOME/.hushlogin < $HOME/../usr/etc/motd
end

# remove fish shell greeting
set fish_greeting

# omf default theme settings
# https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md#default
# https://github.com/oh-my-fish/theme-default/blob/master/functions/fish_prompt.fish
set -g theme_short_path yes
set -g theme_ignore_ssh_awareness yes

# pnpm
set -gx PNPM_HOME "/data/data/com.termux/files/home/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

# https://starship.rs/#fish
#starship init fish | source

# Created by `pipx` on 2022-11-29 04:48:02
set PATH $PATH /data/data/com.termux/files/home/.local/bin

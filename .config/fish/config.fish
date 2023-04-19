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

abbr -a -- tma 'tmux a'
abbr -a -- ll 'exa --long --header --icons --git'
abbr -a -- wls 'viddy -p -d -n 0.1 -c exa --long --header --icons -B --color=always'
abbr -a -- at 'tmux a'
abbr -a -- e exit
abbr -a -- lac lazyconf
abbr -a -- opop xdg-open
abbr -a -- laz lazygit
abbr -a -- llh 'exa --long --header --icons --git --all'
abbr -a -- l exa
abbr -a -- ls exa
abbr -a -- psaux 'viddy -p -d -n 0.5 -c ps aux'
abbr -a -- dufw 'CLICOLOR_FORCE=1 COLORTERM="truecolor" viddy -p -d -n 2 -c duf -only-mp /storage/emulated'
abbr -a -- t tmux
abbr -a -- c clear
abbr -a -- unset 'set --erase'
abbr -a -- wduf 'CLICOLOR_FORCE=1 COLORTERM="truecolor" viddy -p -d -n 2 -c duf -only-mp /storage/emulated'
abbr -a -- wlsa 'viddy -p -t -d -n 0.1 -c exa --long --header --icons -B --all --color=always'
abbr -a -- apps "viddy -p -d -n 0.2 -c \"adb shell 'dumpsys activity activities | grep windows' | awk '{print \\\$3}' | awk NF | cut -d'}' -f1 | awk '!x[\\\$0]++'\""
abbr -a -- o 'bash -c "source /sdcard/termuxlauncher/.apps-launcher && launch \\$(launch -l | fzf)"'
abbr -a -- lla 'exa --long --header --icons --git --all'
abbr -a -- ports 'nmap -p0-65535 127.0.0.1'
abbr -a -- gdu 'cd ~/../../; gdu'

# https://starship.rs/#fish
#starship init fish | source

# Created by `pipx` on 2022-11-29 04:48:02
set PATH $PATH /data/data/com.termux/files/home/.local/bin

zoxide init fish | source

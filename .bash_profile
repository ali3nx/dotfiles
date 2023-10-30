# Environment variables for wayland sessions
if [ "$XDG_SESSION_TYPE" = "wayland" ] ; then
    export QT_QPA_PLATFORM="wayland;xcb"
    export MOZ_ENABLE_WAYLAND=1
fi

if [ "$XDG_CURRENT_DESKTOP" != "KDE" ] ; then
    export QT_QPA_PLATFORMTHEME=qt5ct
fi

export PATH="${PATH}:$HOME/.local/bin"

export npm_config_prefix="$HOME/.local"

if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi


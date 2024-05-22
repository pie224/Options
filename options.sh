#!/bin/bash

gruvbox-poly() {
	poly_option=$(echo -e "Config.ini\nColores\nModulos\nVolver" | rofi -dmenu -i -p "Configuración_Polybar")

    case "$poly_option" in
	    "Config.ini")
	    	kitty -e nvim ~/.config/polybar.old/polybar/saponauta/gruvbox_theme/config.ini &
		;;
	"Colores")
		kitty -e nvim ~/.config/polybar.old/polybar/saponauta/gruvbox_theme/colors.ini &
		;;
	"Modulos")
		kitty -e nvim ~/.config/polybar.old/polybar/saponauta/gruvbox_theme/modules.ini &
		;;
	"Volver")
		temas_polybar
		;;
	:)
		exit 1
		;;
	esac


}

mocha-poly() {
	poly_option=$(echo -e "Config.ini\nColores\nModulos\nVolver" | rofi -dmenu -i -p "Configuración_Polybar")

    case "$poly_option" in
	    "Config.ini")
	    	kitty -e nvim ~/.config/polybar.old/polybar/saponauta/catppuccin_theme/config.ini &
		;;
	"Colores")
		kitty -e nvim ~/.config/polybar.old/polybar/saponauta/catppuccin_theme/colors.ini &
		;;
	"Modulos")
		kitty -e nvim ~/.config/polybar.old/polybar/saponauta/catppuccin_theme/modules.ini &
		;;
	"Volver")
		temas_polybar
		;;
	:)
		exit 1
		;;
	esac


}

tokyo-poly() {
	poly_option=$(echo -e "Config.ini\nColores\nModulos\nVolver" | rofi -dmenu -i -p "Configuración_Polybar")

    case "$poly_option" in
	    "Config.ini")
	    	kitty -e nvim ~/.config/polybar.old/polybar/saponauta/tokyo_night_theme/config.ini &
		;;
	"Colores")
		kitty -e nvim ~/.config/polybar.old/polybar/saponauta/tokyo_night_theme/colors.ini &
		;;
	"Modulos")
		kitty -e nvim ~/.config/polybar.old/polybar/saponauta/tokyo_night_theme/modules.ini &
		;;
	"Volver")
		temas_polybar
		;;
	:)
		exit 1
		;;
	esac


}

temas_polybar() {
	temas=$(echo -e "Tokyo_night\nCatppuccin\nGruvbox\nVolver" | rofi -dmenu -i -p "Temas")

	case "$temas" in
		"Tokyo_night")
			tokyo-poly
			;;
		"Catppuccin")
			mocha-poly
			;;
		"Gruvbox")
			gruvbox-poly
			;;
		"Volver")
			show_config_polybar
			;;
		:)
			exit 1
			;;
		esac

}

temas_rofi() {
	temas=$(echo -e "Tokyo_night\nCatppuccin\nGruvbox\nVolver" | rofi -dmenu -i -p "Temas")

	case "$temas" in
		"Tokyo_night")
			kitty -e nvim /usr/share/rofi/themes/tokyo-night.rasi
			;;
		"Catppuccin")
			kitty -e nvim /usr/share/rofi/themes/catppuccin.rasi
			;;
		"Gruvbox")
			kitty -e nvim /usr/share/rofi/themes/gruvbox-common.rasi
			;;
		"Volver")
			show_config_rofi
			;;
		:)
			exit 1
			;;
		esac

}

show_config_firefox() {
	firefox_option=$(echo -e "userChrome\nuserContent\nSweet-theme\nColores\nVolver" | rofi -dmenu -i -p "Firefox")

	case "$firefox_option" in
		"userChrome")
			kitty -e nvim ~/.mozilla/firefox/0qqe313l.default-release-1715720437116/chrome/userChrome.css
			;;
		"userContent")
			kitty -e nvim ~/.mozilla/firefox/0qqe313l.default-release-1715720437116/chrome/userContent.css
			;;
		"Sweet-theme")
			kitty -e nvim /home/pedro/.mozilla/firefox/0qqe313l.default-release-1715720437116/chrome/firefox-sweet-theme/theme/sweet-theme.css
			;;
		"Colores")
			kitty -e nvim /home/pedro/.mozilla/firefox/0qqe313l.default-release-1715720437116/chrome/firefox-sweet-theme/theme/colors/dark.css
			;;
		"Volver")
			show_config_menu
			;;
		:)
			exit 1
			;;
		esac

}

show_config_otros() {
	otros_option=$(echo -e "Config_options\nPowermenu_config\nIdeas\nTemas\nVolver" | rofi -dmenu -i -p "Otros")

	case "$otros_option" in
		"Config_options")
			kitty -e nvim /home/pedro/.config/polybar.old/polybar/saponauta/scripts/options.sh
			;;
		"Powermenu_config")
			kitty -e nvim /home/pedro/.config/polybar.old/polybar/saponauta/scripts/powermenu.sh
			;;
		"Ideas")
			kitty -e nvim ~/Coding/ideas.txt
			;;
		"Temas")
			kitty -e nvim ~/theme.sh
			;;
		"Volver")
			show_config_menu
			;;
		:)
			exit 1
			;;
		esac


}

show_config_zsh() {
	zsh_option=$(echo -e "Zshrc\n.Zshrc\nVolver" | rofi -dmenu -i -p "Configuracion_zsh")

	case "$zsh_option" in
		"Zshrc")
			kitty -e nvim ~/zshrc
			;;
		".Zshrc")
			kitty -e nvim ~/.zshrc
			;;
		"Volver")
			show_config_menu
			;;
		:)
			exit 1
			;;
		esac

}

show_config_rofi() {
	rofi_option=$(echo -e "Tema\nSelector de temas\nVolver" | rofi -dmenu -i -p "Configuracion_rofi")

	case "$rofi_option" in
		"Tema")
			temas_rofi
			;;
		"Selector de Temas")
			kitty -e rofi-theme-selector
			;;
		"Volver")
			show_config_menu
			;;
		:)
			exit 1
			;;
		esac


}

show_config_kitty() {
	kitty_option=$(echo -e "Kitty.conf\ntokyo-night.conf\nColores\nVolver" | rofi -dmenu -i -p "Configuración_Kitty")

	case "$kitty_option" in
		"Kitty.conf")
			kitty -e nvim ~/.config/kitty/kitty.conf
			;;
		"tokyo-night.conf")
			kitty -e nvim ~/.config/kitty/tokyo-night-kitty.conf
			;;
		"Colores")
			kitty -e nvim ~/.config/kitty/color.ini
			;;
		"Volver")
			show_config_menu
			;;
		:)
			exit 1
			;;
		esac


}


show_config_wm() {
wm_option=$(echo -e "Bspwm\nSxhkd\nVolver" | rofi -dmenu -i -p "Configuración_WM")

	case "$wm_option" in
		"Bspwm")
			kitty -e nvim ~/.config/bspwm/bspwmrc &
			;;
		"Sxhkd")
			kitty -e nvim ~/.config/sxhkd/sxhkdrc &
			;;
		"Volver")
			show_config_menu
			;;
		:)
			exit 1
			;;
		esac
}


show_config_polybar() {
poly_option=$(echo -e "Config.ini\nColores\nModulos\nTemas\nVolver" | rofi -dmenu -i -p "Configuración_Polybar")

    case "$poly_option" in
	    "Config.ini")
	    	kitty -e nvim ~/.config/polybar.old/polybar/saponauta/config.ini &
		;;
	"Colores")
		kitty -e nvim ~/.config/polybar.old/polybar/saponauta/colors.ini &
		;;
	"Modulos")
		kitty -e nvim ~/.config/polybar.old/polybar/saponauta/modules.ini &
		;;
	"Temas")
		temas_polybar
		;;
	"Volver")
		show_config_menu
		;;
	:)
		exit 1
		;;
	esac

}


show_config_menu() {
    config_option=$(echo -e "Polybar\nGestor de Ventanas\nKitty\nNvim\nfirefox\nRofi\nZsh\nOtros\nVolver" | rofi -dmenu -i -p "Configuración")

    case "$config_option" in
        "Polybar")
            show_config_polybar
            ;;
        "Gestor de Ventanas")
            # Abre la configuración del gestor de ventanas, por ejemplo, i3
            show_config_wm
            ;;
        "Kitty")
            # Abre la configuración del terminal, por ejemplo, alacritty
            show_config_kitty
            ;;
	"Nvim")
	    kitty -e nvim ~/.config/nvim/init.vim
	    ;;
	"firefox")
	    show_config_firefox
	    ;;
	"Rofi")
	    show_config_rofi
	    ;;
	"Zsh")
	    show_config_zsh
	    ;;
	"Otros")
	    show_config_otros
	    ;;
        "Volver")
            main_menu
            ;;
        *)
            exit 1
            ;;
    esac
}


main_menu() {
    menu_option=$(echo -e "Aplicaciones\nConfiguración\nFileBrowser\nSalir" | rofi -dmenu -i -p "Menú")

    case "$menu_option" in
        "Aplicaciones")
            rofi -show-icons -show drun
            ;;
	"FileBrowser")
	    rofi -show filebrowser
		;;
        "Configuración")
            show_config_menu
            ;;
        "Salir")
            exit 0
            ;;
        *)
            exit 1
            ;;
    esac
}

main_menu

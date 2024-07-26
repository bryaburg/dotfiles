CHOICES=(
	"Dev Language  Install programming language environment"
	"Dev Database  Install development database in Docker"
	"Steam         Play games from Valve's store"
	"VirtualBox    Virtual machines to run Windows/Linux"
	"> All         Re-run any of the default installers"
	"<< Back       "
)

CHOICE=$(gum choose "${CHOICES[@]}" --height 19 --header "Install application")

if [[ "$CHOICE" == "<< Back"* ]] || [[ -z "$CHOICE" ]]; then
	# Don't install anything
	echo ""
elif [[ "$CHOICE" == "> All"* ]]; then
	INSTALLER_FILE=$(gum file $OMAKUB_PATH/install)

	[[ -n "$INSTALLER_FILE" ]] &&
		gum confirm "Run installer?" &&
		source $INSTALLER_FILE &&
		gum spin --spinner globe --title "Install completed!" -- sleep 3
else
	INSTALLER=$(echo "$CHOICE" | awk -F ' {2,}' '{print $1}' | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')

	case "$INSTALLER" in
	"dev-language") INSTALLER_FILE="$OMAKUB_PATH/install/terminal/select-dev-language.sh" ;;
	"dev-database") INSTALLER_FILE="$OMAKUB_PATH/install/terminal/select-dev-storage.sh" ;;
	"steam") INSTALLER_FILE="$OMAKUB_PATH/install/desktop/optional/app-steam.sh" ;;
	"virtualbox") INSTALLER_FILE="$OMAKUB_PATH/install/desktop/optional/app-virtualbox.sh" ;;
	*) echo "Installer not found for $CHOICE" ;;
	esac

	source $INSTALLER_FILE && gum spin --spinner globe --title "Install completed!" -- sleep 3
fi

clear
source $OMAKUB_PATH/bin/omakub

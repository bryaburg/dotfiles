# Install default programming languages
if [[ -v OMAKUB_FIRST_RUN_LANGUAGES ]]; then
	languages=$OMAKUB_FIRST_RUN_LANGUAGES
else
	AVAILABLE_LANGUAGES=("Go" "Python")
	languages=$(gum choose "${AVAILABLE_LANGUAGES[@]}" --no-limit --height 10 --header "Select programming languages")
fi

if [[ -n "$languages" ]]; then
	for language in $languages; do
		case $language in
		Go)
			mise use --global go@latest
			;;
		Python)
			mise use --global python@latest
			;;
		esac
	done
fi

WINE=/usr/bin/wine64
WINE32=/usr/bin/wine
WINETRICKS=/usr/bin/winetricks

CELLAR=/opt/cellar

download() {
	OUTPUT_FILE=/tmp/$1
	DOWNLOAD_FILE=$2

	wget --quiet --show-progress --progress=bar --output-document=$OUTPUT_FILE $DOWNLOAD_FILE

	echo $OUTPUT_FILE
}

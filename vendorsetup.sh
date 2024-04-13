FDEVICE1="NordCE3Lite/N00BCODER"
CURR_DEVICE="holi"

RED_BACK="\e[101m"
RED="\e[91m"
RESET="\e[0m"
GREEN="\e[92m"

echo "Important Value"
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"
	
echo "General Configurations"
export OF_MAINTAINER="IamAzmathullaShaikh"
export FOX_BUILD_TYPE="Beta"
export FOX_VERSION="R12.1_1"
export FOX_VARIANT="AOSP"

# Binaries & Tools
#export FOX_CUSTOM_BINS_TO_SDCARD=3
export FOX_USE_NANO_EDITOR=1
export FOX_REPLACE_BUSYBOX_PS=1
export FOX_USE_SED_BINARY=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_UNZIP_BINARY=1
export FOX_USE_XZ_UTILS=1
	
export_build_vars(){
	echo -e "${GREEN}Exporting build vars from the holi tree${RESET}"
        #Important Build Flags
	export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
	export FOX_DELETE_AROMAFM=1
	export OF_CLOCK_POS=1
        export OF_CHECK_OVERWRITE_ATTEMPTS=1
	export OF_QUICK_BACKUP_LIST="/system_root;/vendor;/data;/boot;/odm"
	export OF_STATUS_INDENT_RIGHT=48
	export OF_STATUS_INDENT_LEFT=48
	export OF_OPTIONS_LIST_NUM=8
	export FOX_DELETE_INITD_ADDON=1 # !- Causes bootloops sometimes -!
	export FOX_ENABLE_APP_MANAGER=1
        
	
	# Tools and Utilities Configurations
	export OF_OTA_BACKUP_STOCK_BOOT_IMAGE=1
	export OF_USE_LZ4_COMPRESSION=1
	export OF_ENABLE_FS_COMPRESSION=1
	export OF_HIDE_NOTCH=1
	
	# Specific Features Configurations
        export OF_ENABLE_LPTOOLS=1
	export OF_PATCH_AVB20=1
	export OF_SUPPORT_VBMETA_AVB2_PATCHING=1
	export OF_SCREEN_H=2400
        export OF_NO_SPLASH_CHANGE=1
}

set_env_var(){
        echo -e "${RED_BACK}Environment Variable CURR_DEVICE not set... Aborting${RESET}"
        echo "Set to the codename of the device you're building for"
        echo -e "${GREEN}Example :${RESET}"
        echo " export CURR_DEVICE=holi"
        exit 1
}

var_not_eq(){
        echo -e "${RED_BACK}CURR_DEVICE not equal to holi${RESET}"
        echo -e "${RED_BACK}CURR_DEVICE = $CURR_DEVICE${RESET}"
        echo -e "${RED}If this is a mistake, then export CURR_DEVICE to the correct codename${RESET}"
        echo -e "${RED}Skipping holi specific build vars...${RESET}"
}

case "$CURR_DEVICE" in
  "$FDEVICE1")
    export_build_vars;
    ;;
  "")
    set_env_var
    ;;
  *)
    var_not_eq
    ;;
esac

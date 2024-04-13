#!/system/bin/sh
# automatically set device props for unified tree shared-hardware models/variants

load_holi()
{
    resetprop "ro.build.product" "holi"
    resetprop "ro.display.series" "holi"
    resetprop "ro.product.device" "holi"
    resetprop "ro.product.model" "holi"
    resetprop "ro.product.name" "holi"
    resetprop "ro.product.odm.device" "holi"
    resetprop "ro.product.odm.model" "holi"
    resetprop "ro.product.odm.name" "holi"
    resetprop "ro.product.product.device" "holi"
    resetprop "ro.product.product.model" "holi"
    resetprop "ro.product.product.name" "holi"
    resetprop "ro.product.system.device" "holi"
    resetprop "ro.product.system.model" "holi"
    resetprop "ro.product.system.name" "holi"
    resetprop "ro.product.system_ext.device" "holi"
    resetprop "ro.product.system_ext.model" "holi"
    resetprop "ro.product.system_ext.name" "holi"
    resetprop "ro.product.vendor.device" "holi"
    resetprop "ro.product.vendor.model" "holi"
    resetprop "ro.product.vendor.name" "holi"
}

project=$(getprop ro.boot.prj_version)
echo "Running unified/variant script with $project..." >> /tmp/recovery.log

case $project in	
    *)
        load_holi
        ;;
esac

exit 0
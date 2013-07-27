# Inherit AOSPZ device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit AOSPZ common bits
$(call inherit-product, vendor/aospz/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aospz/configs/gsm.mk)


# Setup device specific product configuration
PRODUCT_NAME := aospz_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

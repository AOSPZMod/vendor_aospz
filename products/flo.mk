# Inherit AOSPZ common bits
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

# Inherit AOSPZ device configuration for mako
$(call inherit-product, device/lge/mako/full_flo.mk)

# Setup device specific product configuration
PRODUCT_NAME := aospz_flo
PRODUCT_BRAND := google
PRODUCT_DEVICE := flo
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus
PRODUCT_RESTRICT_VENDOR_FILES := false

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
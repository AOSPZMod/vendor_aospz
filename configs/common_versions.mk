# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell vendor/aospz/tools/getdate)

#GOO.IM OTA System 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=zyr3x \
    ro.goo.board=$(PRODUCT_DEVICE) \
    ro.goo.rom=aospzmod \
    ro.goo.version=$(shell date +%Y%m%d) \


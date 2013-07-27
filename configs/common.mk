SUPERUSER_EMBEDDED := true

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aospz/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/aospz/overlay/dictionaries

PRODUCT_PACKAGES += \
    Torch \
    LockClock \
    CMFileManager \
    Apollo

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0 \
    persist.sys.root_access=3

PRODUCT_COPY_FILES += \
    vendor/aospz/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/aospz/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf
	
# SU
PRODUCT_COPY_FILES += \
    vendor/aospz/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/aospz/prebuilt/common/bin/.ext/.su:system/bin/.ext/.su \
	vendor/aospz/prebuilt/common/xbin/su:system/xbin/su \
	vendor/aospz/prebuilt/common/xbin/daemonsu:system/xbin/daemonsu \
	vendor/aospz/prebuilt/common/etc/install-recovery.sh:system/etc/install-recovery.sh

# init.d
PRODUCT_COPY_FILES += \
    vendor/aospz/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/aospz/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/aospz/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/aospz/prebuilt/common/bin/sysinit:system/bin/sysinit

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    libssh \
    ssh \
    sshd \
    sshd-config \
    ssh-keygen \
    sftp \
    scp

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

#DSP Manager
PRODUCT_PACKAGES += \
    audio_effects.conf \
    DSPManager \
    libcyanogen-dsp
	
PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/aospz/configs/common_versions.mk

# common boot animation
PRODUCT_COPY_FILES += \
    vendor/aospz/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip

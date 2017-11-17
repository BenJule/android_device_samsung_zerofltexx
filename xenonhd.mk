# Initialise device config
$(call inherit-product, device/samsung/zerofltexx/full_zerofltexx.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Enhanced NFC
# $(call inherit-product, vendor/lineage/config/nfc_enhanced.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

PRODUCT_NAME := xenonhd_zerofltexx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_DEVICE := zeroflte
PRODUCT_MODEL := SM-G920F

# Device Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xenonhd.maintainer=BenLue \
    ro.xenonhd.donate="https://www.paypal.me/BenLue"

# 3rd party apps - choose which you want to build
PRODUCT_PACKAGES += \
    Adaway \
    KernelAdiutor \
    MiXplorer

# Camera
PRODUCT_PACKAGES += \
  Camera2 \
  Snap

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=gts210vewifixx \
    BUILD_FINGERPRINT=samsung/zerofltexx/zeroflte:8.0.0/OPR3.170623.013/abd222ec54:user/release-keys \
    PRIVATE_BUILD_DESC="zerofltexx-user 8.0.0 OPR3.170623.013 abd222ec54 release-keys"

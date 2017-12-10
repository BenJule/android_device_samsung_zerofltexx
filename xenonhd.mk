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

<<<<<<< HEAD
PRODUCT_NAME := xenonhd_zerofltexx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_DEVICE := zerofltexx
PRODUCT_MODEL := SM-G920F
=======
# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := Samsung
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := zerofltexx
PRODUCT_NAME := xenonhd_zerofltexx
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SM-G920F

# Inherit properties for TeamNexus-bases ROMs
#$(call inherit-product, vendor/nexus/product.mk)
>>>>>>> 3339252c29961fa0c88af0b8040f88d5ef9df726

PRODUCT_GMS_CLIENTID_BASE := android-samsung
PRODUCT_SKIP_FINGERPRINT_FROM_FILE := true

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
<<<<<<< HEAD
    PRODUCT_NAME=zerofltexx \
    BUILD_FINGERPRINT=samsung/zerofltexx/zerofltexx:8.0.0/OPR3.170623.013/abd222ec54:user/release-keys \
    PRIVATE_BUILD_DESC="zerofltexx-user 8.0.0 OPR3.170623.013 abd222ec54 release-keys"
=======
    PRODUCT_NAME="Galaxy S6" \
    TARGET_DEVICE="Galaxy S6"

PRODUCT_NAME := xenonhd_zerofltexx
PRODUCT_DEVICE := zerofltexx
>>>>>>> 3339252c29961fa0c88af0b8040f88d5ef9df726

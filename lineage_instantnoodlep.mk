#
# Copyright (C) 2018 The LineageOS Project
#               2022 The Evolution X Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from instantnoodlep device
$(call inherit-product, device/oneplus/instantnoodlep/device.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device config
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true

# Root
WITH_SU := true

# GAPPS config
# 0 - NO GAPPS (default)
# 1 - CORE GAPPS
# 2 - FULL GAPPS
WITH_GAPPS := 2

# Use Google Telephony pack (Dialer, Contacts, Messaging) on GAPPS builds
# Default = true
TARGET_USE_GOOGLE_TELEPHONY := false

# Include Pixel Framework on FULL GAPPS builds
# Default = true
TARGET_USE_PIXEL_FRAMEWORK := true

# Debugging
TARGET_INCLUDE_MATLOG := false
TARGET_DEFAULT_ADB_ENABLED := true

# Maintainer
ALPHA_BUILD_TYPE := Unofficial
ALPHA_MAINTAINER := zizzyboi

PRODUCT_NAME := lineage_instantnoodlep
PRODUCT_DEVICE := instantnoodlep
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := IN2025

PRODUCT_SYSTEM_NAME := OnePlus8Pro
PRODUCT_SYSTEM_DEVICE := OnePlus8Pro

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus8Pro-user 13 RKQ1.211119.001 Q.f9c4de_1_5b9c release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus8Pro/OnePlus8Pro:13/RKQ1.211119.001/Q.f9c4de_1_5b9c:user/release-keys

#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common AOSP configurations
$(call inherit-product, build/make/target/product/full_base_telephony.mk)
$(call inherit-product, build/make/target/product/core_64_bit_only.mk)

# Inherit device-specific configurations
$(call inherit-product, device/xiaomi/socrates/device.mk)

# Inherit LineageOS configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# TARGETS
TARGET_INCLUDE_VIPERFX := false
TARGET_DISABLE_LINEAGE_SDK := false
TARGET_DISABLE_EPPE := false
TARGET_BUILD_APERTURE_CAMERA := true
TARGET_EXCLUDES_AUDIOFX := true

# Face Unlock
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_BUILD_DEVICE_AS_WEBCAM := false

# Enable blur
TARGET_ENABLE_BLUR := true

# BCR
TARGET_INCLUDE_BCR := true

# Other ROM feature flags
BYPASS_CHARGE_SUPPORTED := false
PERF_ANIM_OVERRIDE := false
TORCH_STR_SUPPORTED := false

# Bootanimation
TARGET_INCLUDE_BOOT_ANIMATIONS := true
TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_HEIGHT := 3200

# Udfps
TARGET_HAS_UDFPS := true

# Device identifier.
PRODUCT_NAME := lineage_socrates
PRODUCT_DEVICE := socrates
PRODUCT_MODEL := 22127RK46C
PRODUCT_BRAND := Redmi
PRODUCT_MANUFACTURER := Xiaomi

# GMS
ifeq ($(WITH_GMS),true)
TARGET_USES_MINI_GAPPS := false
TARGET_USES_PICO_GAPPS := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
endif
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Properties
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Redmi/socrates/socrates:15/AQ3A.240912.001/OS2.0.209.0.VMKCNXM:user/release-keys

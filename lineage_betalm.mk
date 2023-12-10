#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/lge/betalm/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_betalm
PRODUCT_DEVICE := betalm
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := LGE
PRODUCT_MODEL := G8s ThinQ
TARGET_VENDOR_PRODUCT_NAME := betalm_lao_com
TARGET_VENDOR_DEVICE_NAME := betalm

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=betalm_lao_com \
    PRIVATE_BUILD_DESC="betalm_lao_com-user 12 SKQ1.211103.001 222720007a5f6 release-keys"

BUILD_FINGERPRINT := lge/betalm/betalm:12/SKQ1.211103.001/222720007a5f6:user/release-keys

#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Inherit from mido device
$(call inherit-product, device/xiaomi/ysl/device.mk)

# Inherit some common Dotos stuff
$(call inherit-product, vendor/dot/config/common.mk)

# Inherit some common Dotos flags
DOT_OFFICIAL=true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 720

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ysl
PRODUCT_NAME := dot_ysl
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi S2
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Build fingerprint
BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.210605.005/7349499:user/release-keys
BUILD_DESCRIPTION := redfin-user 11 RQ3A.210605.005/7349499 release-keys

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"

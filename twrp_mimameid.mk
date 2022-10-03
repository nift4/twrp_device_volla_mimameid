#
# Copyright (C) 2022 droid-ng
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

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from mimameid device
$(call inherit-product, device/volla/mimameid/device.mk)

PRODUCT_DEVICE := mimameid
PRODUCT_NAME := twrp_mimameid
PRODUCT_BRAND := volla
PRODUCT_MODEL := Volla Phone 22
PRODUCT_MANUFACTURER := volla

# Stock: volla-11.1-20220926-beta-mimameid-signed.zip
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mimameid-user 11 RQ3A.211001.001 130 dev-keys"

BUILD_FINGERPRINT := volla/lineage_mimameid/mimameid:11/RQ3A.211001.001/130:user/dev-keys

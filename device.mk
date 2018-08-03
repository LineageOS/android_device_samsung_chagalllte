#
# Copyright (C) 2013 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/chagalllte

PRODUCT_CHARACTERISTICS := tablet
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_COPY_FILES += \

PRODUCT_PROPERTY_OVERRIDES += \

PRODUCT_PACKAGES += \

PRODUCT_PACKAGES += \

# Keylayouts
PRODUCT_COPY_FILES += \

# GPS
PRODUCT_COPY_FILES += \

PRODUCT_PACKAGES += \

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \

PRODUCT_PACKAGES += \
    fstab.universal5420 \
    init.baseband.rc \
    ueventd.universal5420.rc

PRODUCT_PACKAGES += \
    libril \
    librilutils \
    modemloader

PRODUCT_PROPERTY_OVERRIDES += \

# call the proprietary setup

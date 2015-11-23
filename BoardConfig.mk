#
# Copyright (C) 2015 The CyanogenMod Project
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

# Inherit from common exynos5420-common
include device/samsung/exynos5420-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/chagalllte

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun0/file

# RIL
BOARD_PROVIDES_LIBRIL := true
# hardware/samsung/ril
BOARD_MODEM_TYPE := xmm7260
# RIL.java overwrite
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_deathly_chagalllte_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/klimtwifi

# Charging mode
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := battery

# Bootloader
TARGET_OTA_ASSERT_DEVICE := chagalllte

# FIMG2D
BOARD_USES_FIMGAPI_V4L2 := false

# Graphics
OVERRIDE_RS_DRIVER := libRSDriverArm.so

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 9639936 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2506096640
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12629049344
BOARD_FLASH_BLOCK_SIZE := 4096

# PowerHAL
TARGET_POWERHAL_VARIANT := chagalllte

# Enable dex-preoptimization to speed up first boot sequence
WITH_DEXPREOPT := true

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.universal5420

# SurfaceFlinger
BOARD_USES_SYNC_MODE_FOR_MEDIA := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"
BOARD_ANT_WIRELESS_POWER := "bluedroid"

# custom additions to updater-script
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/samsung/chagalllte/releasetools/ota_from_target_files

# inherit from the proprietary version
-include vendor/samsung/chagalllte/BoardConfigVendor.mk

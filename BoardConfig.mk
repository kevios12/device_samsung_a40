#
# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/a40

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Build system
BUILD_BROKEN_DUP_RULES := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos7904
TARGET_SOC := exynos7904
TARGET_BOOTLOADER_BOARD_NAME := universal7885
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := a40,a40dd

# Bootloader"
TARGET_BOOTLOADER_BOARD_NAME := SRPSA16C003KU

# Binder
TARGET_USES_64_BIT_BINDER := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 55574528
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5158993920
BOARD_CACHEIMAGE_PARTITION_SIZE := 157286400
BOARD_FLASH_BLOCK_SIZE := 131072

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_KERNEL_SOURCE := kernel/samsung/universal7904
TARGET_KERNEL_CLANG_COMPILE := true

# Prebuilt
#TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
#BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
#TARGET_PREBUILT_DTBIMAGE := $(DEVICE_PATH)/prebuilt/dtb.img

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/samsung/a40
TARGET_KERNEL_CONFIG := a40_defconfig

# Ramdisk compression
LZMA_RAMDISK_TARGETS := recovery

# Platform
TARGET_BOARD_PLATFORM := default

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true

# System-as-root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 1
TARGET_EXCLUDES_AUDIOFX := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab

# Include
TARGET_SPECIFIC_HEADER_PATH := $(COMMON_PATH)/include

# Lineage hardware
ifneq ($(findstring lineage, $(TARGET_PRODUCT)),)
BOARD_HARDWARE_CLASS := \
    hardware/samsung/lineagehw
endif

# Camera
TARGET_CAMERA_BOOTTIME_TIMESTAMP := true

# Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# Recovery
BOARD_HAS_DOWNLOAD_MODE := true

# SELinux
#BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(COMMON_PATH)/sepolicy/private

# VNDK
BOARD_VNDK_VERSION := current

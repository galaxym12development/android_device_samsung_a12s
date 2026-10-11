#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

## Inherit from the common tree
include device/samsung/m12-common/BoardConfigCommon.mk

## Inherit from the proprietary configuration
include vendor/samsung/a12s/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/a12s

## APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

## Display
TARGET_SCREEN_DENSITY := 300

## DTBO
BOARD_DTBO_CFG := $(DEVICE_PATH)/configs/kernel/a12s.cfg

## Dynamic Partitions
BOARD_SUPER_PARTITION_SIZE := 5679087616
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 5678039040

## Kernel
TARGET_KERNEL_CONFIG := a12s_defconfig

## OTA
TARGET_OTA_ASSERT_DEVICE := a12s

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

## SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

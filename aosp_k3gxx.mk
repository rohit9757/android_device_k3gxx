# Release name
PRODUCT_RELEASE_NAME := k3gxx

# Inherit some common CM stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/k3gxx/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/samsung/k3gxx/system_prop.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_k3gxx
PRODUCT_DEVICE := k3gxx
PRODUCT_BRAND := samsung
PRODUCT_MODEL:= SM-G900H
PRODUCT_MANUFACTURER := samsung

# Use Magisk
DEFAULT_ROOT_METHOD := magisk
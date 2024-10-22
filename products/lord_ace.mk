# Inherit AOSP device configuration for ace
$(call inherit-product, device/htc/ace/full_ace.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/lord/products/common.mk)

# Google Apps
$(call inherit-product-if-exists, vendor/google/google-vendor.mk)

# Inherit proprietary qcom stuff.
$(call inherit-product, vendor/qcom/proprietary/qcom-vendor.mk)

PRODUCT_PACKAGES += \
        Gotham

#
# Setup device specific product configuration.
#
PRODUCT_NAME := htc_ace
PRODUCT_BRAND := htc_wwe
PRODUCT_DEVICE := ace
PRODUCT_MODEL := Inspire 4G
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=PRODUCT_NAME=htc_ace BUILD_ID=IMM76I BUILD_FINGERPRINT=google/yakju/maguro:4.0.4/IMM76I/330937:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.0.4 IMM76I 330937 release-keys"
PRODUCT_PLATFORM_VERSION := 4.0.4

PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 2
PRODUCT_VERSION_MAINTENANCE = 3-BETA
PRODUCT_VERSION_GOOAOKP = 10200031
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=IMM76I

PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=Redemption_v$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE) \
	ro.goo.developerid=joedeuce \
	ro.goo.rom=Redemption \
	ro.goo.version=$(PRODUCT_VERSION_GOOAOKP)
	

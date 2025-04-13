PRODUCT_SOONG_NAMESPACES += \
    device/xiaomi/liuqin

# Inherit from the proprietary blobs
$(call inherit-product, vendor/xiaomi/liuqin/liuqin-vendor.mk)

# Set shipping API level
PRODUCT_SHIPPING_API_LEVEL := 33

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.product=liuqin \
    ro.product.device=liuqin

# Dalvik props (Beispiel)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heapsize=512m

# SoC
TARGET_BOARD_PLATFORM := sm8475

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml

# Kamera (wenn vorhanden)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml

# USB (für Charging / OTG / Debugging)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.mi.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.mi.usb.rc

# Display config (falls blob vorhanden)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display/display_id_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_0.xml

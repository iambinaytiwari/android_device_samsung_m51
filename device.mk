#
# Copyright (C) 2023 The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

DEVICE_PATH := device/samsung/m51

PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_TARGET_VNDK_VERSION := 30
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

# AID/fs configs
PRODUCT_PACKAGES += \
    fs_config_files \

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.default \
    audio.r_submix.default \
    audio.usb.default \
    cplay \
    libaudioroute \
    libaudioutils \
    libtinyalsa \
    tinycap \
    tinymix \
    tinypcminfo \
    tinyplay \

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio_effects_common.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_common.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio_effects_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_sec.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio_io_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_io_policy.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio_platform_info_diff.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_diff.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio_platform_info_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_qrd.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio_policy_configuration_base.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_base.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio_tuning_mixer_tavil.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer_tavil.txt \
    $(DEVICE_PATH)/rootdir/vendor/etc/dax3_media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dax3_media_codecs_dolby_audio.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/graphite_ipc_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/graphite_ipc_platform_info.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/listen_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/listen_platform_info.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/mixer_paths_idp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_idp.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/mixer_paths_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/mixer_paths_tavil.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tavil.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/mixer_paths_wcd9375.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9375.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/mixer_paths_wcd9375qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9375qrd.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/mixer_usb_default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_usb_default.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/mixer_usb_gray.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_usb_gray.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/playback_record_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/playback_record_audio_policy_configuration.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/sound_trigger_mixer_paths_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_qrd.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/sound_trigger_mixer_paths_wcd9340.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9340.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/system_properties.xml:$(TARGET_COPY_OUT_VENDOR)/etc/system_properties.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/tms_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/tms_audio_policy_configuration.xml \

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/hearing_aid_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0 \

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-legacy \
    android.hardware.camera.provider@2.5-legacy \
    camera.device@1.0-impl \
    camera.device@3.2-impl \
    camera.device@3.3-impl \
    camera.device@3.4-impl \
    camera.device@3.5-impl \

# Charger
PRODUCT_PACKAGES += \
    libsuspend \

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.3 \
    android.hardware.drm@1.3.vendor \

# FM
PRODUCT_PACKAGES += \
    android.hardware.broadcastradio@1.0-impl \
    android.hardware.broadcastradio@1.0-service \

PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio \
    qcom.fmradio.xml \

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.gatekeeper=mdfpp \

# GNSS/GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0 \
    android.hardware.gnss@1.1 \
    android.hardware.gnss@2.0 \
    android.hardware.gnss@2.1 \

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/floating_feature.xml:$(TARGET_COPY_OUT_VENDOR)/etc/floating_feature.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/gnss_antenna_info.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gnss_antenna_info.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/gpfspath_oem_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/gpfspath_oem_config.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/lowi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/lowi.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf \

# Graphics
PRODUCT_PACKAGES += \
    libion \
    libvulkan \
    vendor.display.color@1.0 \
    vendor.display.color@1.1 \
    vendor.display.color@1.2 \
    vendor.display.color@1.3 \
    vendor.display.config@1.0 \
    vendor.display.config@1.1 \
    vendor.display.config@1.2 \
    vendor.display.config@1.3 \
    vendor.display.config@1.4 \
    vendor.display.config@1.5 \
    vendor.display.config@2.0 \
    vendor.display.postproc@1.0 \

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \

# Keylayout
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/usr/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0-service.samsung \
    libskeymaster4device.vendor:64 \
    libkeymaster4support.vendor:64 \
    libkeymaster4_1support.vendor:64 \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=mdfpp \
    ro.security.keystore.keytype=sakv2,gak \

# Media
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_codecs_c2_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_codecs_c2_sec_ape.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec_ape.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_codecs_c2_sec_qcp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec_qcp.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_codecs_c2_sec_wmx.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec_wmx.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_codecs_performance_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_v1.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_codecs_performance_v2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_v2.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_codecs_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_v1.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_codecs_v2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_v2.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_codecs_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_codecs_vendor_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_audio.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_codecs_vendor_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_v1.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_codecs_vendor_v2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_v2.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/media_profiles_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_vendor.xml \

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml \

# Memtrack
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \

# NFC
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/libnfc-sec-vendor.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-sec-vendor.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \

# Overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    $(DEVICE_PATH)/overlay-lineage/lineage-sdk \

PRODUCT_ENFORCE_RRO_TARGETS := *

PRODUCT_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage \

# Public Libraries
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt \

# QTI
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/etc/permissions/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-qti.xml \
    $(DEVICE_PATH)/rootdir/etc/sysconfig/qti_whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/qti_whitelist.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/secnvm/k250a_00000200.img:$(TARGET_COPY_OUT_VENDOR)/etc/secnvm/k250a_00000200.img \
    $(DEVICE_PATH)/rootdir/vendor/etc/ssg/ta_config.json:$(TARGET_COPY_OUT_VENDOR)/etc/ssg/ta_config.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/ssg/tz_whitelist.json:$(TARGET_COPY_OUT_VENDOR)/etc/ssg/tz_whitelist.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/str/str_preference_data.dat:$(TARGET_COPY_OUT_VENDOR)/etc/str/str_preference_data.dat \
    $(DEVICE_PATH)/rootdir/vendor/etc/btcon.json:$(TARGET_COPY_OUT_VENDOR)/etc/btcon.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/config_chipset.json:$(TARGET_COPY_OUT_VENDOR)/etc/config_chipset.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/config_vendor.json:$(TARGET_COPY_OUT_VENDOR)/etc/config_vendor.json \
    $(DEVICE_PATH)/rootdir/vendor/etc/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config \
    $(DEVICE_PATH)/rootdir/vendor/etc/sec_config_oem:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config_oem \
    $(DEVICE_PATH)/rootdir/vendor/etc/snap_gpu_kernel_64.bin:$(TARGET_COPY_OUT_VENDOR)/etc/snap_gpu_kernel_64.bin \

PRODUCT_COPY_FILES += \
    system/core/libprocessgroup/profiles/cgroups_30.json:$(TARGET_COPY_OUT_VENDOR)/etc/cgroups.json \
    system/core/libprocessgroup/profiles/task_profiles_30.json:$(TARGET_COPY_OUT_VENDOR)/etc/task_profiles.json \

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    fstab.qcom_ramdisk \
    fingerprint_common.rc \
    init.fingerprint.rc \
    init.m51.rc \
    init.nfc.samsung.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.qti.qcv.rc \
    init.qti.ufs.rc \
    init.samsung.bsp.rc \
    init.samsung.display.rc \
    init.samsung.rc \
    init.target.rc \
    init.vendor.onebinary.rc \
    init.vendor.rilchip.rc \
    init.vendor.rilcommon.rc \
    init.vendor.sensors.rc \
    init.vendor.sysfw.rc \
    ueventd.qcom.rc \
    vendor.qti.rmt_storage.rc \
    vendor.qti.tftp.rc \
    wifi_qcom.rc \
    init.class_main.sh \
    init.crda.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.chg_policy.sh \
    init.qti.dcvs.sh \
    init.qti.qcv.sh \
    qca6234-service.sh \

# Recovery
AB_OTA_UPDATER := false

PRODUCT_PACKAGES += \
    init.recovery.qcom.rc \

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.5 \
    android.hardware.radio.config@1.2 \
    libril \
    libxml2 \

# Seccomp Policy
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/seccomp_policy/atfwd@2.0.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/atfwd@2.0.policy \
    $(DEVICE_PATH)/rootdir/vendor/etc/seccomp_policy/codec2.vendor.base.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/codec2.vendor.base.policy \
    $(DEVICE_PATH)/rootdir/vendor/etc/seccomp_policy/codec2.vendor.ext.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/codec2.vendor.ext.policy \
    $(DEVICE_PATH)/rootdir/vendor/etc/seccomp_policy/configstore@1.1.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/configstore@1.1.policy \
    $(DEVICE_PATH)/rootdir/vendor/etc/seccomp_policy/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(DEVICE_PATH)/rootdir/vendor/etc/seccomp_policy/mediaextractor_sec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor_sec.policy \
    $(DEVICE_PATH)/rootdir/vendor/etc/seccomp_policy/vendor.qti.hardware.dsp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/vendor.qti.hardware.dsp.policy \

# Sensors
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/sensors/sns_reg_config:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sns_reg_config \

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH) \

# WiFi
PRODUCT_PACKAGES += \
    TetheringConfigOverlay \
    WifiOverlay \

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/wifi/icm.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/icm.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/wifi/indoorchannel.info:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/indoorchannel.info \
    $(DEVICE_PATH)/rootdir/vendor/etc/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini \
    $(DEVICE_PATH)/rootdir/vendor/etc/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(DEVICE_PATH)/rootdir/vendor/etc/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/m51/m51-vendor.mk)

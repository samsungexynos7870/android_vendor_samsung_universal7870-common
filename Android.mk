# Automatically generated file. DO NOT MODIFY
#
# This file is generated by device/samsung/universal7870-common/setup-makefiles.sh

LOCAL_PATH := $(call my-dir)

ifneq ($(filter a3y17lte a5y17lte a6lte j6lte j7velte j7xelte j7y17lte on7xelte,$(TARGET_DEVICE)),)

include $(CLEAR_VARS)
LOCAL_MODULE := libGLES_mali
LOCAL_MODULE_OWNER := samsung
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/egl/libGLES_mali.so
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/egl/libGLES_mali.so
LOCAL_MULTILIB := both
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_CHECK_ELF_FILES := false
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH_32 := $($(TARGET_2ND_ARCH_VAR_PREFIX)TARGET_OUT_VENDOR_SHARED_LIBRARIES)/egl
LOCAL_MODULE_PATH_64 := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/egl

SYMLINKS := $(TARGET_OUT_VENDOR)
$(SYMLINKS):
	@echo "Symlink: vulkan.$(TARGET_BOARD_PLATFORM).so"
	@mkdir -p $@/lib/hw
	@mkdir -p $@/lib64/hw
	$(hide) ln -sf ../egl/libGLES_mali.so $@/lib/hw/vulkan.$(TARGET_BOARD_PLATFORM).so
	$(hide) ln -sf ../egl/libGLES_mali.so $@/lib64/hw/vulkan.$(TARGET_BOARD_PLATFORM).so
	@echo "Symlink: libOpenCL.so"
	$(hide) ln -sf egl/libGLES_mali.so $@/lib/libOpenCL.so
	$(hide) ln -sf egl/libGLES_mali.so $@/lib64/libOpenCL.so
	@echo "Symlink: libOpenCL.so.1"
	$(hide) ln -sf egl/libGLES_mali.so $@/lib/libOpenCL.so.1
	$(hide) ln -sf egl/libGLES_mali.so $@/lib64/libOpenCL.so.1
	@echo "Symlink: libOpenCL.so.1.1"
	$(hide) ln -sf egl/libGLES_mali.so $@/lib/libOpenCL.so.1.1
	$(hide) ln -sf egl/libGLES_mali.so $@/lib64/libOpenCL.so.1.1

ALL_MODULES.$(LOCAL_MODULE).INSTALLED := \
	$(ALL_MODULES.$(LOCAL_MODULE).INSTALLED) $(SYMLINKS)

include $(BUILD_PREBUILT)


ifeq ($(TARGET_BOARD_HAS_A6LTE_AUDIO_HAL),true)
LOCAL_AUDIO_VARIANT_DIR := A6LTE_AUDIO
LOCAL_SAMSUNGREC_VARIANT := 06004
LOCAL_USE_STARLTE_VNDSECRIL := true
endif

ifeq ($(TARGET_BOARD_HAS_M10LTE_AUDIO_HAL),true)
LOCAL_AUDIO_VARIANT_DIR := M10LTE_AUDIO
LOCAL_SAMSUNGREC_VARIANT := 06006
LOCAL_USE_STARLTE_VNDSECRIL := true
endif

ifeq ($(TARGET_BOARD_HAS_TFA_AMP),true)
include $(CLEAR_VARS)
LOCAL_MODULE := libtfa98xx
LOCAL_MODULE_OWNER := samsung
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES_32 := proprietary/$(LOCAL_AUDIO_VARIANT_DIR)/vendor/lib/libtfa98xx.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libcutils libutils liblog libc++ libc libm libdl
include $(BUILD_PREBUILT)
endif


ifeq ($(LOCAL_USE_STARLTE_VNDSECRIL),true)
include $(CLEAR_VARS)
LOCAL_MODULE := libvndsecril-client
LOCAL_MODULE_OWNER := samsung
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES_64 := proprietary/vendor/lib64/libvndsecril-client.so
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libvndsecril-client.so
LOCAL_MULTILIB := both
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libcutils libhardware_legacy libfloatingfeature libc++ libc libm libdl
include $(BUILD_PREBUILT)
endif


include $(CLEAR_VARS)
LOCAL_MODULE := libaudior7870
LOCAL_MODULE_OWNER := samsung
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES_32 := proprietary/$(LOCAL_AUDIO_VARIANT_DIR)/vendor/lib/libaudior7870.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libcutils libutils libexpat libalsa7870 libc++ libc libm libdl
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := libLifevibes_lvverx
LOCAL_MODULE_OWNER := samsung
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES_32 := proprietary/$(LOCAL_AUDIO_VARIANT_DIR)/vendor/lib/libLifevibes_lvverx.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libcutils libLifevibes_lvvetx libdl libc++ libc libm liblog
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
# Unresolved symbol: __aeabi_idiv
# Unresolved symbol: __aeabi_idivmod
# Unresolved symbol: __aeabi_ldivmod
# Unresolved symbol: __aeabi_uidiv
# Unresolved symbol: __aeabi_uidivmod
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := libLifevibes_lvvetx
LOCAL_MODULE_OWNER := samsung
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES_32 := proprietary/$(LOCAL_AUDIO_VARIANT_DIR)/vendor/lib/libLifevibes_lvvetx.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libcutils libdl libc++ libc libm liblog
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
# Unresolved symbol: __aeabi_idiv
# Unresolved symbol: __aeabi_idivmod
# Unresolved symbol: __aeabi_ldivmod
# Unresolved symbol: __aeabi_uidiv
# Unresolved symbol: __aeabi_uidivmod
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := libpreprocessing_nxp
LOCAL_MODULE_OWNER := samsung
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES_32 := proprietary/$(LOCAL_AUDIO_VARIANT_DIR)/vendor/lib/libpreprocessing_nxp.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libcutils libalsa7870 libaudioutils libexpat libhardware libLifevibes_lvvetx libLifevibes_lvverx libc++ libc libm libdl
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := librecordalive
LOCAL_MODULE_OWNER := samsung
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES_32 := proprietary/$(LOCAL_AUDIO_VARIANT_DIR)/vendor/lib/librecordalive.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
ifeq ($(TARGET_BOARD_HAS_A6LTE_AUDIO_HAL),true)
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils lib_SamsungRec_06004 libsecaudioinfo libc++ libc libm libdl
endif
ifeq ($(TARGET_BOARD_HAS_M10LTE_AUDIO_HAL),true)
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils lib_SamsungRec_06006 libsecaudioinfo libc++ libc libm libdl
endif
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := libsamsungDiamondVoice
LOCAL_MODULE_OWNER := samsung
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES_32 := proprietary/$(LOCAL_AUDIO_VARIANT_DIR)/vendor/lib/libsamsungDiamondVoice.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libcutils libutils libsecaudioinfo libc++ libc libm libdl
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := libSamsungPostProcessConvertor
LOCAL_MODULE_OWNER := samsung
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES_32 := proprietary/$(LOCAL_AUDIO_VARIANT_DIR)/vendor/lib/libSamsungPostProcessConvertor.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := lib_soundaliveresampler libc++ libc libcutils libdl liblog libm libutils
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := lib_SamsungRec_$(LOCAL_SAMSUNGREC_VARIANT)
LOCAL_MODULE_OWNER := samsung
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES_32 := proprietary/$(LOCAL_AUDIO_VARIANT_DIR)/vendor/lib/lib_SamsungRec_$(LOCAL_SAMSUNGREC_VARIANT).so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
ifeq ($(TARGET_BOARD_HAS_A6LTE_AUDIO_HAL),true)
LOCAL_SHARED_LIBRARIES := libc libm libdl liblog libstdc++
endif
ifeq ($(TARGET_BOARD_HAS_M10LTE_AUDIO_HAL),true)
LOCAL_SHARED_LIBRARIES := libc libm libdl liblog
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
# Unresolved symbol: __aeabi_f2lz
# Unresolved symbol: __aeabi_idiv
# Unresolved symbol: __aeabi_l2f
# Unresolved symbol: __aeabi_ldivmod
endif
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := libsecaudioinfo
LOCAL_MODULE_OWNER := samsung
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES_32 := proprietary/$(LOCAL_AUDIO_VARIANT_DIR)/vendor/lib/libsecaudioinfo.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libcutils libutils libfloatingfeature libsecnativefeature libbinder liblog libc++ libc libm libdl
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := lib_soundaliveresampler
LOCAL_MODULE_OWNER := samsung
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES_32 := proprietary/$(LOCAL_AUDIO_VARIANT_DIR)/vendor/lib/lib_soundaliveresampler.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libutils lib_SoundAlive_SRC384_ver320 libaudioutils libcutils liblog libc++ libc libm libdl
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := lib_SoundAlive_SRC384_ver320
LOCAL_MODULE_OWNER := samsung
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES_32 := proprietary/$(LOCAL_AUDIO_VARIANT_DIR)/vendor/lib/lib_SoundAlive_SRC384_ver320.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libc libdl liblog libm
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := libalsa7870
LOCAL_MODULE_OWNER := samsung
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES_32 := proprietary/$(LOCAL_AUDIO_VARIANT_DIR)/vendor/lib/libalsa7870.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libc++ libc libm libdl
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := audio.primary.exynos7870
LOCAL_MODULE_OWNER := samsung
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES_32 := proprietary/$(LOCAL_AUDIO_VARIANT_DIR)/vendor/lib/hw/audio.primary.exynos7870.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
ifeq ($(TARGET_BOARD_HAS_A6LTE_AUDIO_HAL),true)
LOCAL_SHARED_LIBRARIES := libSamsungPostProcessConvertor libaudio-ril libaudior7870 libaudioutils libc++ libc libcutils libdl libfloatingfeature liblog libm libpreprocessing_nxp librecordalive libsamsungDiamondVoice libsecaudioinfo libalsa7870 libtinycompress libutils libvndsecril-client
endif
ifeq ($(TARGET_BOARD_HAS_M10LTE_AUDIO_HAL),true)
LOCAL_SHARED_LIBRARIES := libSamsungPostProcessConvertor libaudio-ril libaudior7870 libaudioutils libc++ libc libcutils libdl libfloatingfeature liblog libm libpreprocessing_nxp librecordalive libsamsungDiamondVoice libsecaudioinfo libalsa7870 libtinycompress libutils libvndsecril-client libtfa98xx
endif
include $(BUILD_PREBUILT)

endif

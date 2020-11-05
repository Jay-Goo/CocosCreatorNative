LOCAL_PATH := $(call my-dir)
$(warning "LOCAL_PATH:"$(LOCAL_PATH))

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2djs_shared

LOCAL_MODULE_FILENAME := libcocos2djs

ifeq ($(USE_ARM_MODE),1)
LOCAL_ARM_MODE := arm
endif

LOCAL_SRC_FILES := hellojavascript/main.cpp \
				   ../LibNativeCocos/cocoscreator/classes/AppDelegate.cpp \
				   ../LibNativeCocos/cocoscreator/classes/jsb_module_register.cpp \

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../LibNativeCocos/cocoscreator/classes

LOCAL_STATIC_LIBRARIES := cocos2dx_static

include $(BUILD_SHARED_LIBRARY)

$(call import-module, cocos)

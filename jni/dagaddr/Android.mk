LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libdagaddr

LOCAL_SRC_FILES :=  \
../../../xia-core/api/dagaddr/cpp/dagaddr.cpp \
../../../xia-core/api/dagaddr/cpp/utils.cpp

LOCAL_CPP_EXTENSION := .cpp

LOCAL_C_INCLUDES += jni/../../xia-core/api/include

LOCAL_SHARED_LIBRARIES := 
LOCAL_LDLIBS := -lz -lm

LOCAL_CPPFLAGS := 
LOCAL_CFLAGS :=  

include $(BUILD_SHARED_LIBRARY)

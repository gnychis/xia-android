LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libdagaddr

LOCAL_SRC_FILES :=  \
dagaddr.cc \
utils.cc

LOCAL_CPP_EXTENSION := .cc

LOCAL_C_INCLUDES += jni/../../xia-core/api/include jni/../../xia-core/api/xsocket/ jni/protobuf jni/../../xia-core/api/xsocket/minini

LOCAL_SHARED_LIBRARIES := \
libdagaddr libprotobuf libz libcutils libutils libpthread
LOCAL_LDLIBS := -lz -lm

LOCAL_CPPFLAGS := -D__MTCLICK__ -DCLICK_USERLEVEL -DHAVE_USER_MULTITHREAD -Wno-psabi -L$(LOCAL_PATH)/src/google/protobuf/io_engine/lib -frtti 
LOCAL_CFLAGS := -Wno-psabi -L$(LOCAL_PATH)/src/google/protobuf/io_engine/lib -frtti 

include $(BUILD_SHARED_LIBRARY)

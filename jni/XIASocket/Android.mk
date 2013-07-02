LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libxiasocket

LOCAL_SRC_FILES :=  \
Xaccept.cc \
Xbind.cc \
Xclose.cc \
Xconnect.cc \
XrequestChunk.cc \
XgetChunkStatus.cc \
XreadChunk.cc \
XputChunk.cc \
Xrecv.cc \
Xrecvfrom.cc \
Xsend.cc \
Xsendto.cc \
Xsocket.cc \
Xsetsockopt.cc \
Xutil.cc \
state.cc \
Xinit.cc \
XupdateAD.cc \
XupdateNameServerDAG.cc \
XgetDAGbyName.cc \
xia.pb.cc \
../../../xia-core/api/xsocket/minini/minIni.c 

LOCAL_CPP_EXTENSION := .cc

LOCAL_C_INCLUDES += jni/../../xia-core/api/include jni/../../xia-core/api/xsocket/ jni/protobuf jni/../../xia-core/api/xsocket/minini

LOCAL_SHARED_LIBRARIES := \
libdagaddr libprotobuf libz libcutils libutils libpthread
LOCAL_LDLIBS := -lz -lm

LOCAL_CPPFLAGS := -D__MTCLICK__ -DCLICK_USERLEVEL -DHAVE_USER_MULTITHREAD -Wno-psabi -L$(LOCAL_PATH)/src/google/protobuf/io_engine/lib -frtti 
LOCAL_CFLAGS := -Wno-psabi -L$(LOCAL_PATH)/src/google/protobuf/io_engine/lib -frtti 

include $(BUILD_SHARED_LIBRARY)

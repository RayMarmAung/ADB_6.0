TEMPLATE = app
CONFIG += console
CONFIG += c++11

DEFINES += ADB_HOST
DEFINES += HAVE_WINSOCK
DEFINES += HAVE_WIN32_IPC

CCFLAG += -O2 -Wall -Werror -Wno-unused-parameter -Wno-missing-field-initializers
QMAKE_CFLAGS += -O2 -Wall -Werror -Wno-unused-parameter -Wno-missing-field-initializers

INCLUDEPATH += $$PWD/base/include
INCLUDEPATH += $$PWD/include
INCLUDEPATH += $$PWD/include/api

INCLUDEPATH += $$PWD/base
INCLUDEPATH += $$PWD/libmincrypt

LIBS += -L$$PWD/libopenssl -llibcrypto -llibssl
LIBS += -L$$PWD/libusb -lAdbWinApi -lAdbWinUsbApi
LIBS += -lws2_32 -lgdi32

SOURCES += \
    adb.cpp \
    #adb_auth.cpp \
    adb_auth.cpp \
    adb_auth_host.cpp \
    adb_client.cpp \
    adb_io.cpp \
    adb_listeners.cpp \
    adb_main.cpp \
    adb_utils.cpp \
    base/stringprintf.cpp \
    base/strings.cpp \
    commandline.cpp \
    console.cpp \
    file_sync_client.cpp \
    services.cpp \
    sockets.cpp \
    sysdeps_win32.cpp \
    transport.cpp \
    transport_local.cpp \
    transport_usb.cpp \
    usb_windows.cpp

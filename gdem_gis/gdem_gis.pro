# -----------------------------------------------------------
# This file is generated by the Qt Visual Studio Integration.
# -----------------------------------------------------------

TEMPLATE = lib
TARGET = gdem_gis

DESTDIR = ../lib

QT += network
CONFIG += staticlib precompile_header build_pass
macx: {
CONFIG += x86
}
DEFINES += GDEM_GIS_LIB

DEPENDPATH += .
UI_DIR += ./GeneratedFiles
RCC_DIR += ./GeneratedFiles

INCLUDEPATH +=

PRECOMPILED_HEADER = stable.h
precompile_header:!isEmpty(PRECOMPILED_HEADER):DEFINES += USING_PCH
build_pass:CONFIG(debug, debug|release): {
    DEFINES += DEBUG
    MOC_DIR += ./GeneratedFiles/debug
    OBJECTS_DIR += debug
    INCLUDEPATH += ./debug \
    ./GeneratedFiles/Debug \
}
else: {
    DEFINES += RELEASE
    DEFINES += QT_NO_DEBUG_OUTPUT
    MOC_DIR += ./GeneratedFiles/release
    OBJECTS_DIR += release
    INCLUDEPATH += ./release \
    ./GeneratedFiles/release \
}

INCLUDEPATH += . \
    ./../gdem_datasrv \
    ./../gdem_base \
    ./../gdem_terrainengine \
    ./../gdem_tile \
    ./../gdem_scene \
    ./../gdem_decodeimg \
    ./../gdem_common \
    ./../gdem_libmain

LIBS += -L"./../lib" \
        -lgdem_libmain \

#Include file(s)
include(gdem_gis.pri)
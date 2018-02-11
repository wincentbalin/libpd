# Test app for libpd Qt wrapper
QT += multimedia

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = pdtest
TEMPLATE = app

SOURCES += main.cpp \
    pdtest.cpp

HEADERS += \
    pdtest.h

include(../../../libpd.pri)

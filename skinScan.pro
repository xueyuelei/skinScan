#-------------------------------------------------
#
# Project created by QtCreator 2016-08-12T16:37:42
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport network sql multimedia multimediawidgets

TARGET = skinScan
TEMPLATE = app


SOURCES += \
    main.cpp \
    sources/mainpart/mainwidget.cpp \
    sources/mainpart/mainstatusbar.cpp \
    sources/usb/qusbhid.cpp \
    sources/usb/hid.c \
    sources/qcustomplot/qcustomplot.cpp \
    sources/userclass/customwidget.cpp \
    sources/customIcon/titleicon.cpp \
    sources/mainpart/measurewidget.cpp \
    sources/chart/barchart.cpp \
    sources/customIcon/statusicon.cpp \
    sources/thread/usbmeasure.cpp \
    sources/userclass/usbstatueshare.cpp \
    sources/userclass/customdialog.cpp \
    sources/userclass/customnetwork.cpp \
    sources/customDialog/loginregisterdialog.cpp \
    sources/sql/connection.cpp \
    sources/mainpart/statisticswidget.cpp \
    sources/userclass/customstackedwidget.cpp \
    sources/customDialog/cameradialog.cpp \
    sources/customDialog/albumdialog.cpp \
    sources/chart/plotwidget.cpp \
    sources/chart/jsontodata.cpp

HEADERS  += \
    sources/mainpart/mainwidget.h \
    sources/mainpart/mainstatusbar.h \
    sources/usb/hidapi.h \
    sources/usb/qusbhid.h \
    sources/qcustomplot/qcustomplot.h \
    sources/userclass/customwidget.h \
    sources/customIcon/titleicon.h \
    sources/mainpart/measurewidget.h \
    sources/chart/barchart.h \
    sources/customIcon/statusicon.h \
    sources/thread/usbmeasure.h \
    sources/userclass/usbstatueshare.h \
    sources/userclass/customdialog.h \
    sources/userclass/customnetwork.h \
    sources/customDialog/loginregisterdialog.h \
    sources/sql/connection.h \
    sources/userstruct/datastore.h \
    sources/mainpart/statisticswidget.h \
    sources/userclass/customstackedwidget.h \
    sources/customDialog/cameradialog.h \
    sources/customDialog/albumdialog.h \
    sources/chart/plotwidget.h \
    sources/chart/jsontodata.h

RESOURCES += \
    res.qrc

FORMS += \
    widget.ui

win32: LIBS += -L$$PWD/library/ -lsetupapi

INCLUDEPATH += $$PWD/library
DEPENDPATH += $$PWD/library

win32:!win32-g++: PRE_TARGETDEPS += $$PWD/library/setupapi.lib
else:win32-g++: PRE_TARGETDEPS += $$PWD/library/libsetupapi.a

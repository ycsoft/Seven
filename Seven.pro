TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp \
    NetWork/netclient.cpp \
    NetWork/tcpconnection.cpp \
    NetWork/tcpserver.cpp

include(deployment.pri)
qtcAddDeployment()


INCLUDEPATH += "F:/C-C++/boost_1_59_0/boost_1_59_0"

unix|win32: LIBS += -L$$PWD/../../boost_1_59_0/boost_1_59_0/stage/lib/ -llibboost_atomic-vc100-mt-gd-1_59

INCLUDEPATH += $$PWD/../../boost_1_59_0/boost_1_59_0/stage
DEPENDPATH += $$PWD/../../boost_1_59_0/boost_1_59_0/stage

HEADERS += \
    NetWork/netclient.h \
    NetWork/tcpconnection.h \
    NetWork/tcpserver.h

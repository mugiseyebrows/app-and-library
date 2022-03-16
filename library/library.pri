INCLUDEPATH += $$PWD

win32 {
    CONFIG(debug, debug|release) {
        LIBS += -L$$PWD/debug
    } else {
        LIBS += -L$$PWD/release
    }
} else {
    LIBS += -L$$PWD
}
LIBS += -llibrary

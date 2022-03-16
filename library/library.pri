INCLUDEPATH += $$PWD

win32 {
    CONFIG(debug, debug|release) {
        LIBS += -L$$PWD/debug -L$$OUT_PWD/../library/debug
    } else {
        LIBS += -L$$PWD/release -L$$OUT_PWD/../library/release
    }
} else {
    LIBS += -L$$PWD -L$$OUT_PWD/../library
}
LIBS += -llibrary

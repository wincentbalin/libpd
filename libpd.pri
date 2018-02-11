DEFINES += PD PD_INTERNAL PD_EXTRA USEAPI_DUMMY

INCLUDEPATH += \
    $$PWD \
    $$PWD/pure-data/src \
    $$PWD/libpd_wrapper \
    $$PWD/libpd_wrapper/util \
    $$PWD/qt

PD_SOURCES = \
    $$PWD/pure-data/src/d_arithmetic.c \
    $$PWD/pure-data/src/d_array.c \
    $$PWD/pure-data/src/d_ctl.c \
    $$PWD/pure-data/src/d_dac.c \
    $$PWD/pure-data/src/d_delay.c \
    $$PWD/pure-data/src/d_fft.c \
    $$PWD/pure-data/src/d_fft_fftsg.c \
    $$PWD/pure-data/src/d_filter.c \
    $$PWD/pure-data/src/d_global.c \
    $$PWD/pure-data/src/d_math.c \
    $$PWD/pure-data/src/d_misc.c \
    $$PWD/pure-data/src/d_osc.c \
    $$PWD/pure-data/src/d_resample.c \
    $$PWD/pure-data/src/d_soundfile.c \
    $$PWD/pure-data/src/d_ugen.c \
    $$PWD/pure-data/src/g_all_guis.c \
    $$PWD/pure-data/src/g_array.c \
    $$PWD/pure-data/src/g_bang.c \
    $$PWD/pure-data/src/g_canvas.c \
    $$PWD/pure-data/src/g_clone.c \
    $$PWD/pure-data/src/g_editor.c \
    $$PWD/pure-data/src/g_graph.c \
    $$PWD/pure-data/src/g_guiconnect.c \
    $$PWD/pure-data/src/g_hdial.c \
    $$PWD/pure-data/src/g_hslider.c \
    $$PWD/pure-data/src/g_io.c \
    $$PWD/pure-data/src/g_mycanvas.c \
    $$PWD/pure-data/src/g_numbox.c \
    $$PWD/pure-data/src/g_readwrite.c \
    $$PWD/pure-data/src/g_rtext.c \
    $$PWD/pure-data/src/g_scalar.c \
    $$PWD/pure-data/src/g_template.c \
    $$PWD/pure-data/src/g_text.c \
    $$PWD/pure-data/src/g_toggle.c \
    $$PWD/pure-data/src/g_traversal.c \
    $$PWD/pure-data/src/g_vdial.c \
    $$PWD/pure-data/src/g_vslider.c \
    $$PWD/pure-data/src/g_vumeter.c \
    $$PWD/pure-data/src/m_atom.c \
    $$PWD/pure-data/src/m_binbuf.c \
    $$PWD/pure-data/src/m_class.c \
    $$PWD/pure-data/src/m_conf.c \
    $$PWD/pure-data/src/m_glob.c \
    $$PWD/pure-data/src/m_memory.c \
    $$PWD/pure-data/src/m_obj.c \
    $$PWD/pure-data/src/m_pd.c \
    $$PWD/pure-data/src/m_sched.c \
    $$PWD/pure-data/src/s_audio.c \
    $$PWD/pure-data/src/s_audio_dummy.c \
    $$PWD/pure-data/src/s_inter.c \
    $$PWD/pure-data/src/s_loader.c \
    $$PWD/pure-data/src/s_main.c \
    $$PWD/pure-data/src/s_path.c \
    $$PWD/pure-data/src/s_print.c \
    $$PWD/pure-data/src/s_utf8.c \
    $$PWD/pure-data/src/x_acoustics.c \
    $$PWD/pure-data/src/x_arithmetic.c \
    $$PWD/pure-data/src/x_array.c \
    $$PWD/pure-data/src/x_connective.c \
    $$PWD/pure-data/src/x_gui.c \
    $$PWD/pure-data/src/x_interface.c \
    $$PWD/pure-data/src/x_list.c \
    $$PWD/pure-data/src/x_midi.c \
    $$PWD/pure-data/src/x_misc.c \
    $$PWD/pure-data/src/x_net.c \
    $$PWD/pure-data/src/x_scalar.c \
    $$PWD/pure-data/src/x_text.c \
    $$PWD/pure-data/src/x_time.c \
    $$PWD/pure-data/src/x_vexp.c \
    $$PWD/pure-data/src/x_vexp_if.c \
    $$PWD/pure-data/src/x_vexp_fun.c \
    $$PWD/libpd_wrapper/s_libpdmidi.c \
    $$PWD/libpd_wrapper/x_libpdreceive.c \
    $$PWD/libpd_wrapper/z_hooks.c \
    $$PWD/libpd_wrapper/z_libpd.c

PD_HEADERS = \
    $$PWD/pure-data/src/m_pd.h \
    $$PWD/libpd_wrapper/x_libpdreceive.h \
    $$PWD/libpd_wrapper/z_hooks.h \
    $$PWD/libpd_wrapper/z_libpd.h

PD_EXTRA_SOURCES = \
    $$PWD/pure-data/extra/bob~/bob~.c \
    $$PWD/pure-data/extra/bonk~/bonk~.c \
    $$PWD/pure-data/extra/choice/choice.c \
    $$PWD/pure-data/extra/fiddle~/fiddle~.c \
    $$PWD/pure-data/extra/loop~/loop~.c \
    $$PWD/pure-data/extra/lrshift~/lrshift~.c \
    $$PWD/pure-data/extra/pique/pique.c \
    $$PWD/pure-data/extra/sigmund~/sigmund~.c \
    $$PWD/pure-data/extra/stdout/stdout.c

LIBPD_UTILS_SOURCES = \
    $$PWD/libpd_wrapper/util/z_print_util.c \
    $$PWD/libpd_wrapper/util/z_queued.c \
    $$PWD/libpd_wrapper/util/ringbuffer.c

LIBPD_UTILS_HEADERS = \
    $$PWD/libpd_wrapper/util/z_print_util.h \
    $$PWD/libpd_wrapper/util/z_queued.h \
    $$PWD/libpd_wrapper/util/ringbuffer.h

CPLUSPLUS_HEADERS = \
    $$PWD/cpp/PdBase.hpp \
    $$PWD/cpp/PdTypes.hpp \
    $$PWD/cpp/PdReceiver.hpp \
    $$PWD/cpp/PdMidiReceiver.hpp

QTPD_SOURCES = \
    $$PWD/qt/qpuredata.cpp

QTPD_HEADERS = \
    $$PWD/qt/qpuredata.h

SOURCES += \
    $$PD_SOURCES \
    $$LIBPD_UTILS_SOURCES \
    $$QTPD_SOURCES

HEADERS += \
    $$PD_HEADERS \
    $$LIBPD_UTILS_HEADERS \
    $$CPLUSPLUS_HEADERS \
    $$QTPD_HEADERS

contains(DEFINES, PD_EXTRA) {
    SOURCES += $$PD_EXTRA_SOURCES
}

win32 {
    DEFINES += WIN32 _WIN32 MSW
    LIBS += -lws2_32 -lkernel32
    QMAKE_LFLAGS += -Wl,--large-address-aware
}

CONFIG(static) {
    DEFINES += USE_STATIC
    CONFIG += static_qt_plugins
    QTPLUGIN +=
    LIBS += -L$$[QT_INSTALL_PLUGINS]/iconengines
    QMAKE_LFLAGS *= -static -static-libstdc++ -static-libgcc
}

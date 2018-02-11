#include "qpuredata.h"

#include "z_libpd.h"
#include "z_queued.h"
#include "z_print_util.h"

// needed for libpd audio passing
#ifndef USEAPI_DUMMY
    #define USEAPI_DUMMY
#endif

#ifndef HAVE_UNISTD_H
    #define HAVE_UNISTD_H
#endif

typedef struct _atom t_atom;

QPureData::QPureData(QObject *parent) :
    QObject(parent)
{

}

QPureData::~QPureData()
{

}

void QPureData::addToSearchPath(const QString &path)
{
    libpd_add_to_search_path(path.toUtf8().constData());
}

void QPureData::clearSearchPath()
{
    libpd_clear_search_path();
}

void QPureData::sendBang(const QString &dest)
{
    libpd_bang(dest.toUtf8().constData());
}

void QPureData::sendFloat(const QString &dest, float value)
{
    libpd_float(dest.toUtf8().constData(), value);
}

void QPureData::sendSymbol(const QString &dest, const QString &symbol)
{
    libpd_symbol(dest.toUtf8().constData(), symbol.toUtf8().constData());
}

void QPureData::sendNoteOn(const int channel, const int pitch, const int velocity)
{
    libpd_noteon(channel, pitch, velocity);
}

void QPureData::sendControlChange(const int channel, const int controller, const int value)
{
    libpd_controlchange(channel, controller, value);
}

void QPureData::sendProgramChange(const int channel, const int value)
{
    libpd_programchange(channel, value);
}

void QPureData::sendPitchBend(const int channel, const int value)
{
    libpd_pitchbend(channel, value);
}

void QPureData::sendAftertouch(const int channel, const int value)
{
    libpd_aftertouch(channel, value);
}

void QPureData::sendPolyAftertouch(const int channel, const int pitch, const int value)
{
    libpd_polyaftertouch(channel, pitch, value);
}

void QPureData::sendMidiByte(const int port, const int value)
{
    libpd_midibyte(port, value);
}

void QPureData::sendSysex(const int port, const int value)
{
    libpd_sysex(port, value);
}

void QPureData::sendSysRealTime(const int port, const int value)
{
    libpd_sysrealtime(port, value);
}

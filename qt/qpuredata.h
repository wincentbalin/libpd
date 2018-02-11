#ifndef QPUREDATA_H
#define QPUREDATA_H

#include <QObject>
#include <QVariantList>

class QPureData : public QObject
{
    Q_OBJECT

public:
    explicit QPureData(QObject *parent = 0);
    virtual ~QPureData();

    virtual void addToSearchPath(const QString &path);
    virtual void clearSearchPath();

protected:
    enum MsgType
    {
        MSG,
        MIDI,
        SYSEX,
        SYSRT
    };

    class Context
    {
    public:
        virtual void clear();
    };

signals:
    void printed(const QString &message);
    void receivedBang(const QString &dest);
    void receivedFloat(const QString &dest, float num);
    void receivedSymbol(const QString &dest, const QString &symbol);
    void receivedList(const QString &dest, const QVariantList &list);
    void receivedMessage(const QString &dest, const QString &msg, const QVariantList &list);

    void receivedNoteOn(const int channel, const int pitch, const int velocity);
    void receivedControlChange(const int channel, const int controller, const int value);
    void receivedProgramChange(const int channel, const int value);
    void receivedPitchBend(const int channel, const int value);
    void receivedAftertouch(const int channel, const int value);
    void receivedPolyAftertouch(const int channel, const int pitch, const int value);
    void receivedMidiByte(const int port, const int byte);

public slots:
    virtual void sendBang(const QString &dest);
    virtual void sendFloat(const QString &dest, float value);
    virtual void sendSymbol(const QString &dest, const QString &symbol);


    virtual void sendNoteOn(const int channel, const int pitch, const int velocity = 64);
    virtual void sendControlChange(const int channel, const int controller, const int value);
    virtual void sendProgramChange(const int channel, const int value);
    virtual void sendPitchBend(const int channel, const int value);
    virtual void sendAftertouch(const int channel, const int value);
    virtual void sendPolyAftertouch(const int channel, const int pitch, const int value);
    virtual void sendMidiByte(const int port, const int value);
    virtual void sendSysex(const int port, const int value);
    virtual void sendSysRealTime(const int port, const int value);
};

#endif // QPUREDATA_H

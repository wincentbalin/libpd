#ifndef PDTEST_H
#define PDTEST_H

#include <QMainWindow>

class PDTest : public QMainWindow
{
    Q_OBJECT

public:
    PDTest();
    ~PDTest();

private:
    void initializeWindow();

signals:

public slots:
};

#endif // PDTEST_H

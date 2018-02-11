#include "pdtest.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    a.setApplicationName("libpd test");
    PDTest w;
    w.show();
    return a.exec();
}

#include "pdtest.h"
#include <QScopedPointer>
#include <QVBoxLayout>


PDTest::PDTest()
{
    initializeWindow();
}

PDTest::~PDTest()
{

}

void PDTest::initializeWindow()
{
    QScopedPointer<QWidget> window(new QWidget);
    QScopedPointer<QVBoxLayout> layout(new QVBoxLayout);
}

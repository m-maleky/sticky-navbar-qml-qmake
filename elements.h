#ifndef ELEMENTS_H
#define ELEMENTS_H

#include <QObject>

class Elements : public QObject
{
    Q_OBJECT

public:

    explicit Elements(QObject *parent = nullptr);
    Q_INVOKABLE QString myString(){
        return "HIIIIII";
    }
signals:

private:

};

#endif // ELEMENTS_H

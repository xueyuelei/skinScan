#ifndef MAINWIDGET_H
#define MAINWIDGET_H

#include <QWidget>

#include "sources/userclass/customwidget.h"
#include "sources/userclass/customnetwork.h"

class QPushButton;
class QLineEdit;
class QToolButton;
class QSettings;
class MainStatusBar;
class CustomNetwork;
class CustomStackedWidget;
class LoginRegisterDialog;
class MeasureWidget;
class StatisticsWidget;
class HelpWidget;
class AboutWidget;

class MainWidget : public CustomWidget
{
    Q_OBJECT
public:
    explicit MainWidget(QWidget *parent = 0);
    ~MainWidget();

signals:

public slots:

private:
    QPushButton *m_userImage = nullptr;
    QPushButton *m_accountButton = nullptr;
    QPushButton *m_userButton = nullptr;
    QToolButton *m_measureButton = nullptr;
    QToolButton *m_statisticsButton = nullptr;
    QToolButton *m_helpButton = nullptr;
    QToolButton *m_aboutButton = nullptr;
    QMenu *m_infoMenu = nullptr;

    MeasureWidget *m_measureWidget = nullptr;
    StatisticsWidget *m_statisticsWidget = nullptr;
    HelpWidget *m_helpWidget = nullptr;
    AboutWidget *m_aboutWidget = nullptr;
    CustomStackedWidget *m_stackedWidget = nullptr;

    MainStatusBar *m_statusBar = nullptr;
    LoginRegisterDialog *m_loginRegisterDialog = nullptr;

    CustomNetwork *m_manager = nullptr;

    QSettings *m_settings = nullptr;

private slots:
    /* action */
    void m_memberInfo();
    void m_modifyPassword();
    void m_loginRegister();
    void m_setting();
    void m_logout();

    /* login */
    void m_setAccountAndUser(const QVariantMap &userInfo);
    /* stacked widget change */
    void m_stackedWidgetChange(int index);
    /* newwork */
    void m_loginReply(CustomNetwork::Status status);
    /* recovery */
    void m_recovery();
    void m_relogin();

};

#endif // MAINWIDGET_H

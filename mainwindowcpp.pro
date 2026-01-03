#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_addButton_clicked()
{
    int a = ui->num1->text().toInt();
    int b = ui->num2->text().toInt();
    ui->result->setText(QString::number(a + b));
}

void MainWindow::on_subButton_clicked()
{
    int a = ui->num1->text().toInt();
    int b = ui->num2->text().toInt();
    ui->result->setText(QString::number(a - b));
}

void MainWindow::on_mulButton_clicked()
{
    int a = ui->num1->text().toInt();
    int b = ui->num2->text().toInt();
    ui->result->setText(QString::number(a * b));
}

void MainWindow::on_divButton_clicked()
{
    int a = ui->num1->text().toInt();
    int b = ui->num2->text().toInt();

    if (b == 0) {
        ui->result->setText("Error");
    } else {
        ui->result->setText(QString::number(a / b));
    }
}


# -*- coding: utf-8 -*-
# 导入Python标准库中的sys模块，以便访问命令行参数
import sys
# 导入QApplication和QWidget类，这是创建窗口所必需的两个类
from PyQt5.QtWidgets import QApplication, QMainWindow
from demo1 import Ui_MainWindow

if __name__ == '__main__':
    # 创建Qt应用程序实例
    # 创建QApplication实例，并传递命令行参数，它是整个Qt应用程序的核心
    app = QApplication(sys.argv)

    main_window = QMainWindow()  # 创建 QMainWindow 实例

    ui = Ui_MainWindow()
    # 将 main_window 传递给 setupUi
    ui.setupUi(main_window)

    # 显示主窗口
    main_window.show()

    # 运行Qt应用程序，并通过sys.exit()函数确保应用程序在退出时正常结束
    sys.exit(app.exec_())

    # 123

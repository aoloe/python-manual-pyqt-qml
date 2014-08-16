# Introduction

This book is about creating dialogs for Desktop applications with Python 3, PyQt 5 and Qt Quick.

Last year, after having watched [Introduction to Qt Quick Controls in Qt 5.1](https://www.youtube.com/watch?v=_6_F6Kpjd-Q) on YouTube I got very excited and loved the idea of being able to mock dialogs and applications with an harmonius  mixture of pseudo JSON and Javascript.

Having being involved in the development of Scribus for the past ten years, I dreamed of designers squeezing their Javascript skills to send us interactive mockups that only required to be rewired to the Scribus code for being integrated into our source code.  
While this has yet to happened, this manual is part of the first step to get a new Scripter engine into Scribus that will allow us to integrate in the Scribus UI, Python scripts combined with Qt Quick dialogs.

The path was steeper than I would have thought. On the one side, the move from Qt Quick 1 to Qt Quick 2 has made a lot of tutorials and snippets you can find on the internet slightly outdated: they are familiar enough, so that you get the fealing they might solve your problem, but result in code that fails with error messages that are not helpful enough to bring you on the right path.

- http://stackoverflow.com/questions/15406002/does-python-go-well-with-qml-qt-quick

# Requirements


For enjoying this book you should have:

- A text editor or Qt Creator.
- A computer with Python, PyQt 5 and the Qt Quick 2.X modules installed.
- Basic Python programming skills.
- Some knowledge about what Qt 5 is and what signals and slots are.


TODO: And if you don't already have the required skills, a few links that can help you getting on track

# PyQt 5

- http://pyqt.sourceforge.net/Docs/PyQt5/index.html

# QML and Qt Quick

- [A nice example of QML file](https://github.com/ioriayane/KanmusuMemory/blob/master/qml/KanmusuMemory/TimerSetting.qml)

# Qt Creator or a text editor



# Your first dialog

Create a first dialog, that simply shows a button that you can click to quit:

[%source%main.qml](examples/your-first-dialog/main.qml)

You can preview the dialog with the `qmlviewer` :

    $ qmlviewer main.qml

The minimal code that allows you to show the QML window with PyQt:

[%source%dialog.py](examples/your-first-dialog/dialog.py)

    $ python dialog.py


# Column and rows

[%source%dialog.py](examples/your-first-dialog/dialog.py)

    $ qmlviewer columns.py

# The basics of the dialog items

## Push Buttons

## Groups

## Radio Buttons

## Combo Boxes

- http://qt-project.org/doc/qt-5/qml-qtquick-controls-combobox.html

## Scrollable Lists

This is TableView

- http://qt-project.org/doc/qt-5/qml-qtquick-controls-tableview.html

# Pure Javascript Mockups

## Properties

Further reading:

- http://qt-project.org/doc/qt-5/qtqml-syntax-objectattributes.html

## Models

# Communicating between Python and QML

- http://qt-project.org/doc/qt-5/qtqml-cppintegration-exposecppattributes.html

## Signals from Qt Quick to Python

## Sending values from Python to Qt Quick

## Python Models for Qt Quick

Models have to be passed as an attribute before the `.qml` file is read.

TODO: find out how to use classes as models.

- http://qt-project.org/doc/qt-4.8/qdeclarativemodels.html
- http://qt-project.org/wiki/Filling-and-reading-QML-UI-forms-from-Python

# The standard dialogs

## Message dialogs

## Input dialogs

## File Open dialogs

## File Save dialogs

# Packaging

## Windows

TODO: digest this thread from the PyQt mailing list

> py2exe generated a folder with a lot of dll files, but it didn't include the necessary plugins, copying the contents of the plugins/ directory into the executable's directory seems to have helped (no longer getting a message that qt's windows plugin is missing) but now the application simply crashes as soon as it starts. The error message it displays is an uninformative "program.exe stopped working". I tried to run the executable from the commandline in the hopes of catching some output telling me what I did wrong, but nothing was displayed.

> We're deploying PyQt5 on Windows with the help of `cx_Freeze`, which works really well in our experience. I think we have to copy QtSql plugin files though IIRC. Try it, it's easy.

# Installing Python, PyQt 5 and Qt Quick

TODO: add links to How-tos
TODO: eventually, show how to get it to work in some Linux distributions and promote Virtualbox

// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.2
import labrab3

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "labrab3"

    function openAccel() {
        acceleratorSensor.visible = true;
        mainScreen.visible = false;
    }

    Screen01 {
        id: mainScreen
    }

    AcceleratorSensor {
        id: acceleratorSensor
        visible: false
    }

}

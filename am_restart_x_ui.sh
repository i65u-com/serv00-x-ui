#!/bin/bash

# 检查进程是否在运行
pgrep -x "x-ui" > /dev/null

# 如果没有运行，则启动 x-ui
if [ $? -ne 0 ]; then
    /home/${USER}/x-ui/x-ui.sh restart
fi

#!/bin/bash
tmux split-window -h -p 75 \; split-window -p 25 \; select-pane -t 2 \; split-window -h -p 32 \;
tmux select-pane -t 1;
weechat

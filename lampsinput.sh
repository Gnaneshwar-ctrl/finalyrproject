#!/bin/bash

atomsk --create fcc 4.046 Al orient [100] [010] [001] \
-duplicate 20 20 60 \
-select out cylinder Z 0.5*box 0.5*box 40 \
-remove-atom select \

Al_alloy.lmp

mv Al_alloy.lmp Al_alloy.lmpdat

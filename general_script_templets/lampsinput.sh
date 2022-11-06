#!/bin/bash

atomsk --create fcc 4.046 Al orient [100] [010] [001] \
-duplicate 4 4 4 \
Al_alloy.lmp

mv Al_alloy.lmp Al_alloy.lmpdat

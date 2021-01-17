#!/bin/bash

bdfresize -f 4 font.bdf > font_big.bdf
bdfconv -f 1 -m '48-72' -n hl_alyx -o font.h font_big.bdf
rm font_big.bdf
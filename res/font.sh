#!/bin/bash

bdfresize -f 6 font.bdf > font_big.bdf
bdfconv -f 1 -m '48-58' -n hl_alyx -o font.h font_big.bdf
rm font_big.bdf
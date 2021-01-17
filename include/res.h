// Includes all bitmap resources

#ifndef RES_H
#define RES_H

#include "hardware_config.h"

#include <Arduino.h>
#include "binary.h"
#include "U8g2lib.h"

#include "heart.h"
#include "ball.xbm"
#include "font.h"

#define FONT_SCALE 6
#define FONT_HEIGHT (8 * FONT_SCALE)
#define FONT_WIDTH (5 * FONT_SCALE)
#define FONT_OFFSET_Y ((LCD_HEIGHT - FONT_HEIGHT) / 2)
#define FONT_OFFSET_X (((LCD_WIDTH / 4) - FONT_WIDTH) / 2)

#endif
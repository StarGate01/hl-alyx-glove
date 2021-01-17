// Setup and resources
#include "hardware_config.h"
#include "res.h"

// Libraries
#include <Arduino.h>
#include "LedControl.h"
#include "U8g2lib.h"


// Display drivers
LedControl lc(LED_DIN, LED_CLK, LED0_CS, 1);
U8G2_SH1106_128X64_NONAME_F_HW_I2C u8g2(U8G2_R0); 

// Heart animation frame indices
int indices[6] = { 0, 1, 2, 3, 2, 1 };

// Resin count
unsigned short resin = 0;


// Core logic

void setup() 
{
    // LEDs
    lc.shutdown(0, false);
    lc.setIntensity(0, 7);
    lc.clearDisplay(0);

    // LCD
    u8g2.begin();
    u8g2.setFont(hl_alyx);
}

int s, i;
void loop() 
{
    // Draw LCD image
    u8g2.clearBuffer();
    u8g2.drawXBMP(ball_left, ball_top, ball_width, ball_height, ball_bits);
    if(resin > 9) u8g2.drawGlyph((LCD_WIDTH / 2) - 2, LCD_HEIGHT - FONT_OFFSET_Y, (resin / 10) + '0');
    else u8g2.drawGlyph((LCD_WIDTH / 2) - 2, LCD_HEIGHT - FONT_OFFSET_Y, ':');
    u8g2.drawGlyph(LCD_WIDTH - FONT_WIDTH, LCD_HEIGHT - FONT_OFFSET_Y, (resin % 10) + '0');
    u8g2.sendBuffer();

    // Render heart animation
    for(s=0; s<6; s++)
    {
        for(i=0; i<8; i++) lc.setRow(0, i, heart[indices[s]][i]);
        delay(100);
    }

    resin++;
    if(resin > 99) resin = 0;
}
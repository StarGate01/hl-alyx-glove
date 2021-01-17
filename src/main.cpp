// Setup and resources
#include "hardware_config.h"
#include "res.h"

// Libraries
#include <Arduino.h>
#include "LedControl.h"
#include "U8g2lib.h"

// Display drivers
LedControl lc(LED_DIN, LED_CLK, LED0_CS, 1);
U8G2_SH1106_128X64_NONAME_F_SW_I2C u8g2(U8G2_R0, LCD_SCL, LCD_SDA, U8X8_PIN_NONE); 

// Heart animation frame indices
int indices[6] = { 0, 1, 2, 3, 2, 1 };


void setup() 
{
    // LEDs
    lc.setIntensity(0, 8);
    lc.clearDisplay(0);

    // LCD
    u8g2.begin();
    u8g2.setFont(u8g_font_unifont);
}

int s, i;
void loop() 
{
    // Draw LCD image
    u8g2.clearBuffer();
    u8g2.drawXBMP(ball_left, ball_top, ball_width, ball_height, ball_bits);
    u8g2.sendBuffer();

    // Render heart animation
    for(s=0; s<6; s++)
    {
        for(i=0; i<8; i++) lc.setRow(0, i, heart[indices[s]][i]);
        delay(100);
    }
}
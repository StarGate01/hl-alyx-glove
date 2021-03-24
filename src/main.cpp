// Setup and resources
#include "hardware_config.h"
#include "res.h"

// Libraries
#include <Arduino.h>
#include "LedControl.h"
#include "U8g2lib.h"


// Various parameters
#define FRAME_TIME 100
#define LEDMAT_NUM 3
#define LEDMAT_BRIGHTNESS 4
#define HEARTS_FRAMES 4

// Display drivers
LedControl lc(LED_DIN, LED_CLK, LED_CS, LEDMAT_NUM);
U8G2_SH1106_128X64_NONAME_F_HW_I2C u8g2(U8G2_R0);

// Core logic
unsigned int mode = 0, resin = 0, hearts_idx = 0;
bool last_b1 = false, last_b2 = false;
bool l1 = false, l2 = false lstat = false, lext = false;


void setup() 
{
    // LEDs
    pinMode(LED_CE, OUTPUT);
    pinMode(LED_EX, OUTPUT);
    pinMode(LED_S1, OUTPUT);
    pinMode(LED_S2, OUTPUT);

    // Sensor
    pinMode(ACC_X, INPUT);
    pinMode(ACC_Y, INPUT);
    pinMode(ACC_Z, INPUT);
    pinMode(BTN_1, INPUT);
    pinMode(BTN_2, INPUT);

    // LCD
    u8g2.begin();
    u8g2.setFont(hl_alyx);

    // Matrices
    delay(500);
    for(int i=0; i<LEDMAT_NUM; i++)
    {
        lc.shutdown(i, false);
        lc.setIntensity(i, LEDMAT_BRIGHTNESS);
        lc.clearDisplay(i);
    }
}

void loop() 
{
    // Read buttons
    bool b1 = digitalRead(BTN_1) == LOW;
    bool b2 = digitalRead(BTN_2) == LOW;

    if(b1 && !last_b1)
    {
        mode += 1;
        mode = mode % 6;
    }
    last_b1 = b1;

    if(b2 && !last_b2)
    {
        if(mode == 0)
        {
            resin += 1;
            resin = resin % 100;
        }
        else if(mode == 1)
        {
            hearts_idx += 1;
            hearts_idx = hearts_idx % (HEARTS_FRAMES * 3);
        }
        else if(mode == 2)
        {
            l1 = !l1;
            digitalWrite(LED_S1, l1);
        }
        else if(mode == 3)
        {
            l2 = !l2;
            digitalWrite(LED_S2, l1);
        }
        else if(mode == 4)
        {
            lstat = !lstat;
            digitalWrite(LED_CE, lstat);
        }
        else if(mode == 5)
        {
            lext = !lext;
            digitalWrite(LED_EX, lext);
        }
    }
    last_b2 = b2;

    // Draw LCD image
    u8g2.clearBuffer();
    u8g2.drawXBMP(ball_left, ball_top, ball_width, ball_height, ball_bits);
    if(resin > 9) u8g2.drawGlyph((LCD_WIDTH / 2) - 2, LCD_HEIGHT - FONT_OFFSET_Y, (resin / 10) + '0');
    else u8g2.drawGlyph((LCD_WIDTH / 2) - 2, LCD_HEIGHT - FONT_OFFSET_Y, ':');
    u8g2.drawGlyph(LCD_WIDTH - FONT_WIDTH, LCD_HEIGHT - FONT_OFFSET_Y, (resin % 10) + '0');
    u8g2.sendBuffer();

    // Draw hearts
    for(int k=0; k<8; k++) 
    {
        lc.setRow(0, k, heart[heart_idx[max(HEARTS_FRAMES - 1, hearts_idx)]][k]);
        if(hearts_idx > HEARTS_FRAMES - 1)
        {
            lc.setRow(1, k, heart[heart_idx[hearts_idx - HEARTS_FRAMES]][k]);
            if(hearts_idx > (HEARTS_FRAMES * 2) - 1)
            {
                lc.setRow(1, k, heart[heart_idx[hearts_idx - (HEARTS_FRAMES * 2)]][k]);
            }
            else
            {
                lc.setRow(2, k, heart[heart_idx[0]][k]);
            }
        }
        else
        {
            lc.setRow(1, k, heart[heart_idx[0]][k]);
            lc.setRow(2, k, heart[heart_idx[0]][k]);
        }
    }

    // Debounce
    delay(20);
}
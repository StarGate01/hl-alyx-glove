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
#define LEDMAT_BRIGHTNESS 3
#define HEARTS_FRAMES 4

// Display drivers
LedControl lc(LED_DIN, LED_CLK, LED_CS, LEDMAT_NUM);
U8G2_SH1106_128X64_NONAME_F_HW_I2C u8g2(U8G2_R0);

// Core logic
unsigned int mode = 0, resin = 0;
unsigned int hearts_idx[3] = { 0, 0, 0 };
bool last_b1 = false, last_b2 = false;
bool l1 = false, l2 = false, lstat = false, lext = false;


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

    // Mode button
    if(b1 && !last_b1)
    {
        mode++;
        mode = mode % 6;
    }
    last_b1 = b1;

    // Change button
    if(b2 && !last_b2)
    {
        if(mode == 0)
        {
            resin++;
            resin = resin % 100;
        }
        else if(mode == 1)
        {
            hearts_idx[0]++;
            if(hearts_idx[0] > HEARTS_FRAMES - 1)
            {
                hearts_idx[0]--;
                hearts_idx[1]++;
                if(hearts_idx[1] > HEARTS_FRAMES - 1)
                {
                    hearts_idx[1]--;
                    hearts_idx[2]++;
                    if(hearts_idx[2] > HEARTS_FRAMES - 1)
                    {
                        hearts_idx[0] = 0;
                        hearts_idx[1] = 0;
                        hearts_idx[2] = 0;
                    }
                }
            }
        }
        else if(mode == 2)
        {
            l1 = !l1;
            digitalWrite(LED_S1, l1);
        }
        else if(mode == 3)
        {
            l2 = !l2;
            digitalWrite(LED_S2, l2);
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
        for(int i=0; i<3; i++)
        {
            lc.setRow(i, k, heart[hearts_idx[i]][k]);
        }
    }

    // Test the accelerometer
    // int x = max(0, min(255, (analogRead(ACC_X) * 3) / 128));
    // int y = max(0, min(255, (analogRead(ACC_Y) * 3) / 128));
    // int z = max(0, min(255, (analogRead(ACC_Z) * 3) / 128));
    // lc.setRow(0, 0, x);
    // lc.setRow(0, 1, y);
    // lc.setRow(0, 2, z);

    // Debounce
    delay(20);
}
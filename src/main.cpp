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
#define SENSOR_SAMPLES 8

// Display drivers
LedControl lc(LED_DIN, LED_CLK, LED_CS, LEDMAT_NUM);
U8G2_SH1106_128X64_NONAME_F_HW_I2C u8g2(U8G2_R0);

// Sensor configuration
const int sensor_idx[] { ACC_X, ACC_Y, ACC_Z };
const int sensor_min[] = { 280, 280, 350 };
const int sensor_max[] = { 425, 425, 425 };

// Heart animation frame indices
#define HEART_ANIM_SIZE 6
int heart_idx[HEART_ANIM_SIZE] = { 0, 1, 2, 3, 2, 1 };
int acc_bar_idx[8] = { 0, 0, 3, 1, 1, 3, 2, 2 };

unsigned int resin = 0, frame_count = 0, anim_index = 0;


// Core logic

unsigned long frame_time;

float read_sensor(int index)
{
    int raw = 0;
    for(int i=0; i<SENSOR_SAMPLES; i++) 
    {
        raw += analogRead(sensor_idx[index]);
    }
    return ((float)map(raw / SENSOR_SAMPLES, sensor_min[index], sensor_max[index], -1000, 1000)) / 1000.f;
}

byte sensor_to_display(float value)
{
    int acc = round(((value + 1.0f) / 2.0f) * 8.0f);
    return (byte)((1 << acc) - 1);
}

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
    frame_time = millis();

    // Read sensor
    byte acc[] = {
        sensor_to_display(read_sensor(0)),
        sensor_to_display(read_sensor(1)),
        sensor_to_display(read_sensor(2)),
        0
    };

    // Read buttons
    bool btn[] = {
        digitalRead(BTN_1) == LOW,
        digitalRead(BTN_2) == LOW
    };

    // Draw LCD image
    resin = frame_count / 10;
    u8g2.clearBuffer();
    u8g2.drawXBMP(ball_left, ball_top, ball_width, ball_height, ball_bits);
    if(resin > 9) u8g2.drawGlyph((LCD_WIDTH / 2) - 2, LCD_HEIGHT - FONT_OFFSET_Y, (resin / 10) + '0');
    else u8g2.drawGlyph((LCD_WIDTH / 2) - 2, LCD_HEIGHT - FONT_OFFSET_Y, ':');
    u8g2.drawGlyph(LCD_WIDTH - FONT_WIDTH, LCD_HEIGHT - FONT_OFFSET_Y, (resin % 10) + '0');
    u8g2.sendBuffer();

   
    for(int k=0; k<8; k++) 
    {
        // Render heart animation
        lc.setRow(0, k, heart[heart_idx[frame_count % HEART_ANIM_SIZE]][k]);
        // Display sensor values
        lc.setRow(1, k, acc[acc_bar_idx[k]]);
        // Display button state
        lc.setRow(2, k, (btn[k<4? 0:1])? 0:255);
    }

    // Blink LEDs for testing
    digitalWrite(LED_S1, frame_count % 6 == 0? HIGH:LOW);
    digitalWrite(LED_S2, frame_count % 9 == 0? HIGH:LOW);
    digitalWrite(LED_CE, frame_count % 12 == 0? HIGH:LOW);
    digitalWrite(LED_EX, frame_count % 15 == 0? HIGH:LOW);

    frame_count++;
    if(frame_count > 600) frame_count = 0; 
    
    // Clamp frame time
    delay(20);
}
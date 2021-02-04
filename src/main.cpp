// Setup and resources
#include "hardware_config.h"
#include "res.h"

// Libraries
#include <Arduino.h>
#include "LedControl.h"
#include "U8g2lib.h"


// Display drivers
LedControl lc(LED_DIN, LED_CLK, LED_CS, 2);
U8G2_SH1106_128X64_NONAME_F_HW_I2C u8g2(U8G2_R0);

// Heart animation frame indices
#define HEART_ANIM_SIZE 6
int heart_idx[HEART_ANIM_SIZE] = { 0, 1, 2, 3, 2, 1 };

// Resin count
unsigned short resin = 0;


// Various parameters

#define FRAME_TIME 700
#define HEART_TIME 100
#define LEDMAT_NUM 3
#define LEDMAT_BRIGHTNESS 4
#define SENSOR_SAMPLES 8

// Core logic

unsigned long frame_time, heart_time;
float acc_x, acc_y, acc_z;

float read_sensor(int pin)
{
    int raw = 0;
    for(int i=0; i<SENSOR_SAMPLES; i++) 
    {
        raw += analogRead(pin);
    }
    return (float)map(raw, 0, 675 * SENSOR_SAMPLES, -3000, 3000) / 1000.0f;
}

void setup() 
{
    // Debugging
    Serial.begin(9600);

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
    acc_x = read_sensor(ACC_X);
    acc_y = read_sensor(ACC_Y);
    acc_z = read_sensor(ACC_Z);
    Serial.print("X: ");
    Serial.print(acc_x);
    Serial.print(" Y: ");
    Serial.print(acc_y);
    Serial.print(" Z: ");
    Serial.print(acc_z);
    Serial.print(" B1: ");
    Serial.print(digitalRead(BTN_1) == HIGH? 1:0);
    Serial.print(" B2: ");
    Serial.print(digitalRead(BTN_2) == HIGH? 1:0);
    Serial.print("\n");

    // Draw LCD image
    u8g2.clearBuffer();
    u8g2.drawXBMP(ball_left, ball_top, ball_width, ball_height, ball_bits);
    if(resin > 9) u8g2.drawGlyph((LCD_WIDTH / 2) - 2, LCD_HEIGHT - FONT_OFFSET_Y, (resin / 10) + '0');
    else u8g2.drawGlyph((LCD_WIDTH / 2) - 2, LCD_HEIGHT - FONT_OFFSET_Y, ':');
    u8g2.drawGlyph(LCD_WIDTH - FONT_WIDTH, LCD_HEIGHT - FONT_OFFSET_Y, (resin % 10) + '0');
    u8g2.sendBuffer();

    // Render heart animation
    for(int s=0; s<6; s++)
    {
        heart_time = millis();
        for(int i=0; i<LEDMAT_NUM; i++) 
        {
            for(int k=0; k<8; k++) 
            {
                lc.setRow(i, k, heart[heart_idx[(s + i) % HEART_ANIM_SIZE]][k]);
            }
        }
        delay(HEART_TIME - (millis() - heart_time));
    }

    // Blink LEDs for testing
    digitalWrite(LED_S1, resin % 2 == 0? HIGH:LOW);
    digitalWrite(LED_S2, resin % 3 == 0? HIGH:LOW);
    digitalWrite(LED_CE, resin % 4 == 0? HIGH:LOW);
    digitalWrite(LED_EX, resin % 5 == 0? HIGH:LOW);

    // Increase resin for testing
    resin++;
    if(resin > 99) resin = 0; 
    
    // Clamp frame time
    delay(FRAME_TIME - (millis() - frame_time));
}
/* 
 * File:   ecu_char_lcd.c
 * Author: Yasser Elgafary
 * https://www.linkedin.com/in/yasser-elgafary-718bb9250/
 * Created on April 10, 2024, 4:25 AM
 */

#include "ecu_char_lcd.h"

static Std_ReturnType lcd_send_4bits(const char_lcd_4bit_t *lcd, uint8 _data_command);
static Std_ReturnType lcd_4bit_send_enable_signal(const char_lcd_4bit_t *lcd);
static Std_ReturnType lcd_8bit_send_enable_signal(const char_lcd_8bit_t *lcd);
static Std_ReturnType lcd_8bit_set_cursor(const char_lcd_8bit_t *lcd, uint8 row, uint8 column);
static Std_ReturnType lcd_4bit_set_cursor(const char_lcd_4bit_t *lcd, uint8 row, uint8 column);

Std_ReturnType lcd_4bit_intialize(const char_lcd_4bit_t *lcd) {
    Std_ReturnType ret = E_OK;
    uint8 data_pins_counter = ZERO_INIT;
    if (NULL == lcd) {
        ret = E_NOT_OK;
    } else {
        gpio_pin_intialize(&(lcd->lcd_rs));
        gpio_pin_intialize(&(lcd->lcd_en));
        for (data_pins_counter = 0; data_pins_counter < 4; data_pins_counter++) {
            gpio_pin_intialize(&(lcd->lcd_data[data_pins_counter]));
        }
        __delay_ms(20);
        ret = lcd_4bit_send_command(lcd, _LCD_8BIT_MODE_2_LINE);
        __delay_ms(5);
        ret = lcd_4bit_send_command(lcd, _LCD_8BIT_MODE_2_LINE);
        __delay_us(150);
        ret = lcd_4bit_send_command(lcd, _LCD_8BIT_MODE_2_LINE);

        ret = lcd_4bit_send_command(lcd, _LCD_CLEAR);
        ret = lcd_4bit_send_command(lcd, _LCD_RETURN_HOME);
        ret = lcd_4bit_send_command(lcd, _LCD_ENTRY_MODE_INC_SHIFT_OFF);
        ret = lcd_4bit_send_command(lcd, _LCD_DISPLAY_ON_UNDERLINE_OFF_CURSOR_OFF);
        ret = lcd_4bit_send_command(lcd, _LCD_4BIT_MODE_2_LINE);
        ret = lcd_4bit_send_command(lcd, _LCD_DDRAM_START);
    }
    return ret;
}

Std_ReturnType lcd_4bit_send_command(const char_lcd_4bit_t *lcd, uint8 command) {
    Std_ReturnType ret = E_OK;
    if (NULL == lcd) {
        ret = E_NOT_OK;
    } else {
        ret = gpio_pin_write_logic(&(lcd->lcd_rs), GPIO_LOW);
        ret = lcd_send_4bits(lcd, command >> 4);
        ret = lcd_4bit_send_enable_signal(lcd);
        ret = lcd_send_4bits(lcd, command);
        ret = lcd_4bit_send_enable_signal(lcd);
    }
    return ret;
}

Std_ReturnType lcd_4bit_send_char_data(const char_lcd_4bit_t *lcd, uint8 data) {
    Std_ReturnType ret = E_OK;
    if (NULL == lcd) {
        ret = E_NOT_OK;
    } else {
        ret = gpio_pin_write_logic(&(lcd->lcd_rs), GPIO_HIGH);
        ret = lcd_send_4bits(lcd, data >> 4);
        ret = lcd_4bit_send_enable_signal(lcd);
        ret = lcd_send_4bits(lcd, data);
        ret = lcd_4bit_send_enable_signal(lcd);
    }
    return ret;
}

Std_ReturnType lcd_4bit_send_char_data_pos(const char_lcd_4bit_t *lcd, uint8 row, uint8 column, uint8 data) {
    Std_ReturnType ret = E_OK;
    if (NULL == lcd) {
        ret = E_NOT_OK;
    } else {
        ret = lcd_4bit_set_cursor(lcd, row, column);
        ret = lcd_4bit_send_char_data(lcd, data);
    }
    return ret;
}

Std_ReturnType lcd_4bit_send_string(const char_lcd_4bit_t *lcd, uint8 *str) {
    Std_ReturnType ret = E_OK;
    if (NULL == lcd) {
        ret = E_NOT_OK;
    } else {
        while (*str) {
            ret = lcd_4bit_send_char_data(lcd, *str++);
        }
    }
    return ret;
}

Std_ReturnType lcd_4bit_send_string_pos(const char_lcd_4bit_t *lcd, uint8 row, uint8 column, uint8 *str) {
    Std_ReturnType ret = E_OK;
    if (NULL == lcd) {
        ret = E_NOT_OK;
    } else {
        ret = lcd_4bit_set_cursor(lcd, row, column);
        ret = lcd_4bit_send_string(lcd, str);
    }
    return ret;
}

Std_ReturnType lcd_4bit_send_custom_char(const char_lcd_4bit_t *lcd, uint8 row, uint8 column, const uint8 _chr[], uint8 mem_pos) {
    Std_ReturnType ret = E_OK;
    uint8 cgram_counter = ZERO_INIT;
    if (NULL == lcd) {
        ret = E_NOT_OK;
    } else {
        ret = lcd_4bit_send_command(lcd, (_LCD_CGRAM_START + (mem_pos * 8)));
        for (cgram_counter = 0; cgram_counter < 8; cgram_counter++) {
            ret = lcd_4bit_send_char_data(lcd, _chr[cgram_counter]);
        }
        ret = lcd_4bit_send_char_data_pos(lcd, row, column, mem_pos);
    }
    return ret;
}

Std_ReturnType lcd_8bit_intialize(const char_lcd_8bit_t *lcd) {
    Std_ReturnType ret = E_OK;
    uint8 data_pins_counter = ZERO_INIT;
    if (NULL == lcd) {
        ret = E_NOT_OK;
    } else {
        gpio_pin_intialize(&(lcd->lcd_rs));
        gpio_pin_intialize(&(lcd->lcd_en));
        for (data_pins_counter = 0; data_pins_counter < 8; data_pins_counter++) {
            gpio_pin_intialize(&(lcd->lcd_data[data_pins_counter]));
        }
        __delay_ms(20);
        ret = lcd_8bit_send_command(lcd, _LCD_8BIT_MODE_2_LINE);
        __delay_ms(5);
        ret = lcd_8bit_send_command(lcd, _LCD_8BIT_MODE_2_LINE);
        __delay_us(150);
        ret = lcd_8bit_send_command(lcd, _LCD_8BIT_MODE_2_LINE);

        ret = lcd_8bit_send_command(lcd, _LCD_CLEAR);
        ret = lcd_8bit_send_command(lcd, _LCD_RETURN_HOME);
        ret = lcd_8bit_send_command(lcd, _LCD_ENTRY_MODE_INC_SHIFT_OFF);
        ret = lcd_8bit_send_command(lcd, _LCD_DISPLAY_ON_UNDERLINE_OFF_CURSOR_OFF);
        ret = lcd_8bit_send_command(lcd, _LCD_8BIT_MODE_2_LINE);
        ret = lcd_8bit_send_command(lcd, _LCD_DDRAM_START);
    }
    return ret;
}

Std_ReturnType lcd_8bit_send_command(const char_lcd_8bit_t *lcd, uint8 command) {
    Std_ReturnType ret = E_OK;
    uint8 data_pin_counter = ZERO_INIT;
    if (NULL == lcd) {
        ret = E_NOT_OK;
    } else {
        ret = gpio_pin_write_logic(&(lcd->lcd_rs), GPIO_LOW);
        for (data_pin_counter = 0; data_pin_counter < 8; data_pin_counter++) {
            ret = gpio_pin_write_logic(&(lcd->lcd_data[data_pin_counter]), (command >> data_pin_counter)&(uint8) 0x01);
        }
        ret = lcd_8bit_send_enable_signal(lcd);
    }
    return ret;
}

Std_ReturnType lcd_8bit_send_char_data(const char_lcd_8bit_t *lcd, uint8 data) {
    Std_ReturnType ret = E_OK;
    uint8 data_pin_counter = ZERO_INIT;
    if (NULL == lcd) {
        ret = E_NOT_OK;
    } else {
        ret = gpio_pin_write_logic(&(lcd->lcd_rs), GPIO_HIGH);
        for (data_pin_counter = 0; data_pin_counter < 8; data_pin_counter++) {
            ret = gpio_pin_write_logic(&(lcd->lcd_data[data_pin_counter]), (data >> data_pin_counter)&(uint8) 0x01);
        }
        ret = lcd_8bit_send_enable_signal(lcd);
    }
    return ret;
}

Std_ReturnType lcd_8bit_send_char_data_pos(const char_lcd_8bit_t *lcd, uint8 row, uint8 column, uint8 data) {
    Std_ReturnType ret = E_OK;
    if (NULL == lcd) {
        ret = E_NOT_OK;
    } else {
        ret = lcd_8bit_set_cursor(lcd, row, column);
        ret = lcd_8bit_send_char_data(lcd, data);
    }
    return ret;
}

Std_ReturnType lcd_8bit_send_string(const char_lcd_8bit_t *lcd, uint8 *str) {
    Std_ReturnType ret = E_OK;
    if (NULL == lcd) {
        ret = E_NOT_OK;
    } else {
        while (*str) {
            ret = lcd_8bit_send_char_data(lcd, *str++);
        }
    }
    return ret;
}

Std_ReturnType lcd_8bit_send_string_pos(const char_lcd_8bit_t *lcd, uint8 row, uint8 column, uint8 *str) {
    Std_ReturnType ret = E_OK;
    if (NULL == lcd) {
        ret = E_NOT_OK;
    } else {
        ret = lcd_8bit_set_cursor(lcd, row, column);
        ret = lcd_8bit_send_string(lcd, str);
    }
    return ret;
}

Std_ReturnType lcd_8bit_send_custom_char(const char_lcd_8bit_t *lcd, uint8 row, uint8 column, const uint8 _chr[], uint8 mem_pos) {
    Std_ReturnType ret = E_OK;
    uint8 cgram_counter = ZERO_INIT;
    if (NULL == lcd) {
        ret = E_NOT_OK;
    } else {
        ret = lcd_8bit_send_command(lcd, (_LCD_CGRAM_START + (mem_pos * 8)));
        for (cgram_counter = 0; cgram_counter < 8; cgram_counter++) {
            ret = lcd_8bit_send_char_data(lcd, _chr[cgram_counter]);
        }
        ret = lcd_8bit_send_char_data_pos(lcd, row, column, mem_pos);
    }
    return ret;
}

Std_ReturnType convert_uint8_to_string(uint8 value, uint8 *str) {
    Std_ReturnType ret = E_OK;
    if (NULL == str) {
        ret = E_NOT_OK;
    } else {
        memset(str, '\0', 4);
        sprintf(str, "%l", value);
    }
    return ret;
}

Std_ReturnType convert_uint16_to_string(uint16 value, uint8 *str) {
    Std_ReturnType ret = E_OK;
    if (NULL == str) {
        ret = E_NOT_OK;
    } else {
        memset(str, '\0', 6);
        sprintf(str, "%i", value);

    }
    return ret;
}

Std_ReturnType convert_uint32_to_string(uint32 value, uint8 *str) {
    Std_ReturnType ret = E_OK;
    if (NULL == str) {
        ret = E_NOT_OK;
    } else {
        memset(str, '\0', 11);
        sprintf(str, "%lu", value);

    }
    return ret;
}
Std_ReturnType convert_sint8_to_string(sint8 value, uint8 *str) {
    Std_ReturnType ret = E_OK;
    if (NULL == str) {
        ret = E_NOT_OK;
    } else {
        memset(str, '\0', 4);
        sprintf(str, "%i", value);
    }
    return ret;
}

Std_ReturnType convert_sint16_to_string(sint16 value, uint8 *str) {
    Std_ReturnType ret = E_OK;
    if (NULL == str) {
        ret = E_NOT_OK;
    } else {
        memset(str, '\0', 6);
        sprintf(str, "%i", value);

    }
    return ret;
}

Std_ReturnType convert_sint32_to_string(sint32 value, uint8 *str) {
    Std_ReturnType ret = E_OK;
    if (NULL == str) {
        ret = E_NOT_OK;
    } else {
        memset(str, '\0', 11);
        sprintf(str, "%ld", value);
    }
    return ret;
}

Std_ReturnType convert_float32_to_string(float32 value, uint8 *str) {
    Std_ReturnType ret = E_OK;
    if (NULL == str) {
        ret = E_NOT_OK;
    } else {
        memset(str, '\0', 11);
        sprintf(str, "%0.2f", value);
    }
    return ret;
}

static Std_ReturnType lcd_send_4bits(const char_lcd_4bit_t *lcd, uint8 _data_command) {
    Std_ReturnType ret = E_OK;
    uint8 data_pin_counter = ZERO_INIT;
    for (data_pin_counter = 0; data_pin_counter < 4; data_pin_counter++) {
        ret = gpio_pin_write_logic(&(lcd->lcd_data[data_pin_counter]), (_data_command >> data_pin_counter) & (uint8) 0x01);
    }
}

static Std_ReturnType lcd_4bit_send_enable_signal(const char_lcd_4bit_t *lcd) {
    Std_ReturnType ret = E_OK;
    ret = gpio_pin_write_logic(&(lcd->lcd_en), GPIO_HIGH);
    __delay_us(5);
    ret = gpio_pin_write_logic(&(lcd->lcd_en), GPIO_LOW);
}

static Std_ReturnType lcd_8bit_send_enable_signal(const char_lcd_8bit_t *lcd) {
    Std_ReturnType ret = E_OK;
    ret = gpio_pin_write_logic(&(lcd->lcd_en), GPIO_HIGH);
    __delay_us(5);
    ret = gpio_pin_write_logic(&(lcd->lcd_en), GPIO_LOW);
}

static Std_ReturnType lcd_8bit_set_cursor(const char_lcd_8bit_t *lcd, uint8 row, uint8 column) {
    Std_ReturnType ret = E_OK;
    column--;
    switch (row) {
        case ROW1:
            ret = lcd_8bit_send_command(lcd, (0x80 + column));
            break;
        case ROW2:
            ret = lcd_8bit_send_command(lcd, (0xc0 + column));
            break;
        case ROW3:
            ret = lcd_8bit_send_command(lcd, (0x94 + column));
            break;
        case ROW4:
            ret = lcd_8bit_send_command(lcd, (0xd4 + column));
            break;
        default:;
    }
}

static Std_ReturnType lcd_4bit_set_cursor(const char_lcd_4bit_t *lcd, uint8 row, uint8 column) {
    Std_ReturnType ret = E_OK;
    column--;
    switch (row) {
        case ROW1:
            ret = lcd_4bit_send_command(lcd, (0x80 + column));
            break;
        case ROW2:
            ret = lcd_4bit_send_command(lcd, (0xc0 + column));
            break;
        case ROW3:
            ret = lcd_4bit_send_command(lcd, (0x94 + column));
            break;
        case ROW4:
            ret = lcd_4bit_send_command(lcd, (0xd4 + column));
            break;
        default:;
    }
}

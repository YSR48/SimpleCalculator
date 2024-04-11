/*
 * File:   application.c
 * Author: Yasser Elgafary
 * https://www.linkedin.com/in/yasser-elgafary-718bb9250/
 * Created on April 10, 2024, 4:25 AM
 */

#include "application.h"

#define MAX_INPUT_LENGTH 11
#define DELAY_MS 250

Std_ReturnType ret;
uint8 val = '\0';
uint8 first_num_index = ZERO_INIT, sec_num_index = ZERO_INIT, op = ZERO_INIT;
sint32 first_num = ZERO_INIT, sec_num = ZERO_INIT;
sint32 int_res = ZERO_INIT;
float32 res = ZERO_INIT;
uint8 str_first_number[MAX_INPUT_LENGTH] = "\0", str_sec_number[MAX_INPUT_LENGTH] = "\0";
uint8 str_res[MAX_INPUT_LENGTH] = "\0", str_int_res[MAX_INPUT_LENGTH] = "\0";

int main() {
    application_intialize();
    while (1) {
        while (1) {
            val = '\0';
            do {
                keypad_get_value(&keypad, &val);
            } while (val == '\0');
            if ('+' == val || '-' == val || '*' == val || '/' == val || (MAX_INPUT_LENGTH - 1) == first_num_index) {
                op = val;
                lcd_4bit_send_string_pos(&lcd_4, 4, 1, str_first_number);
                lcd_4bit_send_char_data_pos(&lcd_4, 4, (first_num_index + 1), op);
                lcd_4bit_send_string_pos(&lcd_4, 1, 1, "                    ");
                lcd_4bit_send_command(&lcd_4, _LCD_RETURN_HOME);
                break;
            }
            if ('#' == val) {
                lcd_4bit_send_command(&lcd_4, _LCD_CLEAR);
                return 0;
            }
            str_first_number[first_num_index] = val;
            first_num_index++;
            lcd_4bit_send_char_data_pos(&lcd_4, 1, first_num_index, val);
            __delay_ms(DELAY_MS);
        }
        __delay_ms(DELAY_MS);
        while (1) {
            val = '\0';
            do {
                keypad_get_value(&keypad, &val);
            } while (val == '\0');
            if ('=' == val || (MAX_INPUT_LENGTH - 1) == sec_num_index) {
                lcd_4bit_send_command(&lcd_4, _LCD_CLEAR);
                break;
            }
            if ('#' == val) {
                lcd_4bit_send_command(&lcd_4, _LCD_CLEAR);
                return 0;
            }
            str_sec_number[sec_num_index] = val;
            sec_num_index++;
            lcd_4bit_send_char_data_pos(&lcd_4, 1, sec_num_index, val);
            __delay_ms(DELAY_MS);
        }
        __delay_ms(DELAY_MS);
        convert_str_to_int(str_first_number, &first_num);
        convert_str_to_int(str_sec_number, &sec_num);
        switch (op) {
            case '+':
                int_res = first_num + sec_num;
                convert_sint32_to_string(int_res, str_int_res);
                lcd_4bit_send_string_pos(&lcd_4, 1, 1, str_int_res);
                break;
            case '-':
                int_res = first_num - sec_num;
                convert_sint32_to_string(int_res, str_int_res);
                lcd_4bit_send_string_pos(&lcd_4, 1, 1, str_int_res);
                break;
            case '*':
                int_res = first_num * sec_num;
                convert_sint32_to_string(int_res, str_int_res);
                lcd_4bit_send_string_pos(&lcd_4, 1, 1, str_int_res);
                break;
            case'/':
                if (0 == sec_num) {
                    lcd_4bit_send_command(&lcd_4, _LCD_CLEAR);
                    lcd_4bit_send_string_pos(&lcd_4, 1, 1, "Division by zero is ");
                    lcd_4bit_send_string_pos(&lcd_4, 2, 1, "Not allowed ");
                    break;
                } else {
                    res = (float32) ((float32) first_num / (float32) sec_num);
                    convert_float32_to_string(res, str_res);
                    lcd_4bit_send_string_pos(&lcd_4, 1, 1, str_res);
                    break;
                }
            default:;
        }
    }
    return (EXIT_SUCCESS);
}

void application_intialize() {
    ecu_layer_intialize();
}

Std_ReturnType convert_str_to_int(const uint8 *str, sint32 *num) {
    Std_ReturnType ret = E_OK;
    *num = atol(str);
    return ret;
}

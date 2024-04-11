/* 
 * File:   ecu_keypad.c
 * Author: Yasser Elgafary
 * https://www.linkedin.com/in/yasser-elgafary-718bb9250/
 * Created on April 10, 2024, 4:25 AM
 */

#include "ecu_keypad.h"

static const uint8 btn_values[ECU_KEYPAD_ROWS][ECU_KEYPAD_COLUMNS] = {
    {'7', '8', '9', '/'},
    {'4', '5', '6', '*'},
    {'1', '2', '3', '-'},
    {'#', '0', '=', '+'}
};

Std_ReturnType keypad_initialize(const keypad_t *_keypad_obj) {
    Std_ReturnType ret = E_OK;
    uint8 rows_counter = ZERO_INIT, columns_counter = ZERO_INIT;
    if (NULL == _keypad_obj) {
        ret = E_NOT_OK;
    } else {
        for (rows_counter = ZERO_INIT; rows_counter < ECU_KEYPAD_ROWS; rows_counter++) {
            ret = gpio_pin_intialize(&(_keypad_obj->keypad_row_pins[rows_counter]));
        }
        for (columns_counter = ZERO_INIT; columns_counter < ECU_KEYPAD_COLUMNS; columns_counter++) {
            ret = gpio_pin_direction_intialize(&(_keypad_obj->keypad_columns_pins[columns_counter]));
        }
    }
    return ret;
}

Std_ReturnType keypad_get_value(const keypad_t *_keypad_obj, uint8 *value) {
    Std_ReturnType ret = E_OK;
    uint8 rows_counter = ZERO_INIT, columns_counter = ZERO_INIT, counter = ZERO_INIT, logic = ZERO_INIT;
    if ((NULL == _keypad_obj) || (NULL == value)) {
        ret = E_NOT_OK;
    } else {
        for (rows_counter = ZERO_INIT; rows_counter < ECU_KEYPAD_ROWS; rows_counter++) {
            for (counter = ZERO_INIT; counter < ECU_KEYPAD_ROWS; counter++) {
                ret = gpio_pin_write_logic(&(_keypad_obj->keypad_row_pins[counter]), GPIO_LOW);
            }
            gpio_pin_write_logic(&(_keypad_obj->keypad_row_pins[rows_counter]), GPIO_HIGH);
            __delay_ms(10);
            for (columns_counter = ZERO_INIT; columns_counter < ECU_KEYPAD_COLUMNS; columns_counter++) {
                ret = gpio_pin_read_logic(&(_keypad_obj->keypad_columns_pins[columns_counter]), &logic);
                if (GPIO_HIGH == logic) {
                    *value = btn_values[rows_counter][columns_counter];
                }
            }
        }
    }
    return ret;
}

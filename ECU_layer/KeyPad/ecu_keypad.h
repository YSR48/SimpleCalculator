/* 
 * File:   ecu_keypad.h
 * Author: Yasser Elgafary
 * https://www.linkedin.com/in/yasser-elgafary-718bb9250/
 * Created on April 10, 2024, 4:25 AM
 */

#ifndef ECU_KEYPAD_H
#define	ECU_KEYPAD_H

/**************************** Includes Section Start *********************************/
#include "ecu_keypad_cfg.h"
#include "../../MCAL_layer/GPIO/hal_gpio.h"
/**************************** Includes Section End ***********************************/

/***************************** Macro Section Start **********************************/
#define ECU_KEYPAD_ROWS         4
#define ECU_KEYPAD_COLUMNS      4
/***************************** Macro Section End ***********************************/

/***************************** Macro Functions Section Start **********************************/
/***************************** Macro Functions Section End ***********************************/

/***************************** Data Types Declaration Section Start **********************************/
typedef struct {
    pin_config_t keypad_row_pins[ECU_KEYPAD_ROWS];
    pin_config_t keypad_columns_pins[ECU_KEYPAD_COLUMNS];
} keypad_t;
/***************************** Data Types Declaration Section End ***********************************/

/***************************** Functions Declaration Section Start **********************************/
Std_ReturnType keypad_initialize(const keypad_t *_keypad_obj);
Std_ReturnType keypad_get_value(const keypad_t *_keypad_obj, uint8 *value);
/***************************** Functions Declaration Section End ***********************************/


#endif	/* ECU_KEYPAD_H */


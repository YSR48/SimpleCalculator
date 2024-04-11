/* 
 * File:   application.h
 * Author: Yasser Elgafary
 * https://www.linkedin.com/in/yasser-elgafary-718bb9250/
 * Created on April 10, 2024, 4:25 AM
 */

#ifndef APPLICATION_H
#define	APPLICATION_H


/**************************** Includes Section Start *********************************/
#include "ECU_layer/ecu_layer_inti.h"
/**************************** Includes Section End ***********************************/

/***************************** Macro Section Start **********************************/
/***************************** Macro Section End ***********************************/

/***************************** Macro Functions Section Start **********************************/
/***************************** Macro Functions Section End ***********************************/

/***************************** Data Types Declaration Section Start **********************************/
extern char_lcd_4bit_t lcd_4;
extern char_lcd_8bit_t lcd_8;
extern keypad_t keypad;
/***************************** Data Types Declaration Section End ***********************************/

/***************************** Functions Declaration Section Start **********************************/
void application_intialize();
Std_ReturnType convert_str_to_int(const uint8 *str, sint32 *num);
/***************************** Functions Declaration Section End ***********************************/



#endif	/* APPLICATION_H */
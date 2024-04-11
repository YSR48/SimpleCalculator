/* 
 * File:   mcal_std_types.h
 * Author: Yasser Elgafary
 * https://www.linkedin.com/in/yasser-elgafary-718bb9250/
 * Created on April 10, 2024, 4:25 AM
 */
 

#ifndef MCAL_STD_TYPES_H
#define	MCAL_STD_TYPES_H

/**************************** Includes Section Start *********************************/
#include "std_libraries.h"
#include "compiler.h"
/**************************** Includes Section End ***********************************/

/***************************** Macro Section Start **********************************/
#define STD_HIGH                0x01
#define STD_LOW                 0x00

#define STD_ON                  0x01
#define STD_OFF                 0x00

#define STD_ACTIVE              0x01
#define STD_IDLE                0x00

#define E_OK                    (Std_ReturnType)0x01
#define E_NOT_OK                (Std_ReturnType)0x00

#define ZERO_INIT               0

/***************************** Macro Section End ***********************************/

/***************************** Macro Functions Section Start **********************************/

/***************************** Macro Functions Section End ***********************************/

/***************************** Data Types Declaration Section Start **********************************/
typedef unsigned char boolean;
typedef unsigned char uint8;
typedef unsigned int uint16;
typedef unsigned long uint32;
typedef signed char sint8;
typedef signed int sint16;
typedef signed long sint32;
typedef float float32;

typedef uint8 Std_ReturnType;

/***************************** Data Types Declaration Section End ***********************************/

/***************************** Functions Declaration Section Start **********************************/

/***************************** Functions Declaration Section End ***********************************/

#endif	/* MCAL_STD_TYPES_H */


NAMESPACE Siemens.AX.Quickstart

    FUNCTION_BLOCK Shiftregister
        VAR_INPUT
            DirectionRight : BOOL := FALSE;
        END_VAR
        VAR_OUTPUT
            Q0 : BOOL;
            Q1 : BOOL;
            Q2 : BOOL;
            Q3 : BOOL;
            Q4 : BOOL;
            Q5 : BOOL;
            Q6 : BOOL;
            Q7 : BOOL;
        END_VAR
        VAR PRIVATE
            _initialized : BOOL;
            _shiftRegister : BYTE;
        END_VAR
        IF NOT (_initialized) THEN
            _initialized := TRUE;
            _shiftRegister := BYTE#16#01;
        ELSE
            IF (DirectionRight) THEN
                _shiftRegister := ROR(_shiftRegister, USINT#1);
            ELSE
                _shiftRegister := ROL(_shiftRegister, USINT#1);
            END_IF;
        END_IF;
        Q0 := _shiftRegister.%X0;
        Q1 := _shiftRegister.%X1;
        Q2 := _shiftRegister.%X2;
        Q3 := _shiftRegister.%X3;
        Q4 := _shiftRegister.%X4;
        Q5 := _shiftRegister.%X5;
        Q6 := _shiftRegister.%X6;
        Q7 := _shiftRegister.%X7;
        ;
    END_FUNCTION_BLOCK

END_NAMESPACE

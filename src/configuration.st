USING Siemens.AX.Quickstart;
CONFIGURATION MyConfiguration
    TASK Main(Priority := 1, Interval := T#1000ms);
    
    PROGRAM P1 WITH Main: MainProgram;
        
    VAR_GLOBAL
        sr : Shiftregister;
        directionRight : BOOL;
    END_VAR
END_CONFIGURATION

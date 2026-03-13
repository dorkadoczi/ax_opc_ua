USING Siemens.AX.Quickstart;
CONFIGURATION MyConfiguration
    TASK Main(Priority := 1, Interval := T#1000ms);
    
    PROGRAM P1 WITH Main: MainProgram;
        
    VAR_GLOBAL
        
        directionRight : BOOL;
    END_VAR
END_CONFIGURATION
{OpcUa.NodeGenerator.IdType = SymbolName} // Use fully-qualified variable names as OPC UA NodeIds
CONFIGURATION PLC_1
  VAR_GLOBAL
    {S7.extern = ReadWrite} // Make var1 Read/Write accessible to the Web API and OPC UA Node Generator
    {OpcUa.AccessLevel = WriteOnly}  // Create an OPC UA node mapped to var1 with AccessLevel WriteOnly
    sr : Shiftregister;
  END_VAR
END_CONFIGURATION
USING AxUnit.Assert;

NAMESPACE Siemens.AX.Quickstart

    {TestFixture}
    CLASS TestShiftRegister
        VAR
            sr : Shiftregister;
            srStateLess : Shiftregister;
        END_VAR

        {TestSetup}
        METHOD PUBLIC TestSetup
            sr := srStateLess;
        END_METHOD

        {Test}
        METHOD PUBLIC EachCallShiftTheBitByOneInLeftDirection
            // First call 
            sr(DirectionRight := FALSE);
            Equal(actual := sr.Q0, expected := TRUE);
            Equal(actual := sr.Q1, expected := FALSE);
            Equal(actual := sr.Q2, expected := FALSE);
            Equal(actual := sr.Q3, expected := FALSE);
            Equal(actual := sr.Q4, expected := FALSE);
            Equal(actual := sr.Q5, expected := FALSE);
            Equal(actual := sr.Q6, expected := FALSE);
            Equal(actual := sr.Q7, expected := FALSE);
            // Second call
            sr(DirectionRight := FALSE);
            Equal(actual := sr.Q0, expected := FALSE);
            Equal(actual := sr.Q1, expected := TRUE);
            Equal(actual := sr.Q2, expected := FALSE);
            Equal(actual := sr.Q3, expected := FALSE);
            Equal(actual := sr.Q4, expected := FALSE);
            Equal(actual := sr.Q5, expected := FALSE);
            Equal(actual := sr.Q6, expected := FALSE);
            Equal(actual := sr.Q7, expected := FALSE);
            sr(DirectionRight := FALSE);
            sr(DirectionRight := FALSE);
            sr(DirectionRight := FALSE);
            sr(DirectionRight := FALSE);
            sr(DirectionRight := FALSE);
            sr(DirectionRight := FALSE);
            Equal(actual := sr.Q0, expected := FALSE);
            Equal(actual := sr.Q1, expected := FALSE);
            Equal(actual := sr.Q2, expected := FALSE);
            Equal(actual := sr.Q3, expected := FALSE);
            Equal(actual := sr.Q4, expected := FALSE);
            Equal(actual := sr.Q5, expected := FALSE);
            Equal(actual := sr.Q6, expected := FALSE);
            Equal(actual := sr.Q7, expected := TRUE);
            // Overflow
            sr(DirectionRight := FALSE);
            Equal(actual := sr.Q0, expected := TRUE);
            Equal(actual := sr.Q1, expected := FALSE);
            Equal(actual := sr.Q2, expected := FALSE);
            Equal(actual := sr.Q3, expected := FALSE);
            Equal(actual := sr.Q4, expected := FALSE);
            Equal(actual := sr.Q5, expected := FALSE);
            Equal(actual := sr.Q6, expected := FALSE);
            Equal(actual := sr.Q7, expected := FALSE);
        END_METHOD

        {Test}
        METHOD PUBLIC EachCallShiftTheBitByOneInRightDirection
            // First call 
            sr(DirectionRight := TRUE);
            Equal(actual := sr.Q0, expected := TRUE);
            Equal(actual := sr.Q1, expected := FALSE);
            Equal(actual := sr.Q2, expected := FALSE);
            Equal(actual := sr.Q3, expected := FALSE);
            Equal(actual := sr.Q4, expected := FALSE);
            Equal(actual := sr.Q5, expected := FALSE);
            Equal(actual := sr.Q6, expected := FALSE);
            Equal(actual := sr.Q7, expected := FALSE);
            // Second call
            sr(DirectionRight := TRUE);
            Equal(actual := sr.Q0, expected := FALSE);
            Equal(actual := sr.Q1, expected := FALSE);
            Equal(actual := sr.Q2, expected := FALSE);
            Equal(actual := sr.Q3, expected := FALSE);
            Equal(actual := sr.Q4, expected := FALSE);
            Equal(actual := sr.Q5, expected := FALSE);
            Equal(actual := sr.Q6, expected := FALSE);
            Equal(actual := sr.Q7, expected := TRUE);
            sr(DirectionRight := TRUE);
            sr(DirectionRight := TRUE);
            sr(DirectionRight := TRUE);
            sr(DirectionRight := TRUE);
            sr(DirectionRight := TRUE);
            sr(DirectionRight := TRUE);
            Equal(actual := sr.Q0, expected := FALSE);
            Equal(actual := sr.Q1, expected := TRUE);
            Equal(actual := sr.Q2, expected := FALSE);
            Equal(actual := sr.Q3, expected := FALSE);
            Equal(actual := sr.Q4, expected := FALSE);
            Equal(actual := sr.Q5, expected := FALSE);
            Equal(actual := sr.Q6, expected := FALSE);
            Equal(actual := sr.Q7, expected := FALSE);
            // Overflow
            sr(DirectionRight := TRUE);
            Equal(actual := sr.Q0, expected := TRUE);
            Equal(actual := sr.Q1, expected := FALSE);
            Equal(actual := sr.Q2, expected := FALSE);
            Equal(actual := sr.Q3, expected := FALSE);
            Equal(actual := sr.Q4, expected := FALSE);
            Equal(actual := sr.Q5, expected := FALSE);
            Equal(actual := sr.Q6, expected := FALSE);
            Equal(actual := sr.Q7, expected := FALSE);
        END_METHOD
    END_CLASS

END_NAMESPACE

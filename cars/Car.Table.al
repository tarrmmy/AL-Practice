table 50110 Car
{
    DataClassification = ToBeClassified;
    Caption = 'Car';
    fields
    {
        field(1; Car; Code[15])
        {
            DataClassification = ToBeClassified;
            Caption = 'Car';
        }
        field(2; Model; Text[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Model';
        }
    }

    keys
    {
        key(Key1; Car)
        {
            Clustered = true;
        }
    }


}
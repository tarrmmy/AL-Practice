table 50115 Bike
{
    Caption = 'Bike';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Bike; Code[10])
        {
            Caption = 'Bike';
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
    }

    keys
    {
        key(PK; Bike)
        {
            Clustered = true;
        }
    }

}
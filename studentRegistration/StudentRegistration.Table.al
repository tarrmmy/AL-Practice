table 50230 "StudentRegistration"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student No."; Code[10])
        {
            Caption = 'Student Number';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; "Student Name"; Text[100])
        {
            Caption = 'Student Name';
            DataClassification = ToBeClassified;
        }
        field(3; "Registration Date"; Date)
        {
            Caption = 'Registration Date';
            DataClassification = ToBeClassified;
        }
        field(4; Completed; Boolean)
        {
            Caption = 'Completed';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Student Name")
        {
            Clustered = true;
        }
    }

}
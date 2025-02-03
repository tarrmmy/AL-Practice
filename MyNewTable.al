table 50106 MyTable
{

    fields
    {
        field(1; Code; Code[10])
        {
            Caption = 'Code';
        }
        field(2; Description; Text[10])
        {
            Caption = 'Description';
        }
        field(3; "Item No."; Code[20])
        {
            Caption = 'Item Number';
        }
        field(4; "Created At"; DateTime)
        {
            Caption = 'Created At';
        }
        field(5; "Changed At"; DateTime)
        {
            Caption = 'Changed At';
        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        "Created At" := CurrentDateTime;
    end;

    trigger OnModify()
    begin
        "Changed At" := CurrentDateTime;
    end;

    trigger OnDelete()
    begin
        Message('The record %1 was deleted.', Rec.Code);
    end;

    trigger OnRename()
    begin
        Message('The record %1 was renamed.', xRec.Code, Rec.Code);
    end;

}
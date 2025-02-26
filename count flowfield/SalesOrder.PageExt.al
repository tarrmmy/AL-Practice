pageextension 50100 "Sales Order Ext" extends "Sales Order"
{
    layout
    {
        addafter(Status)
        {
            field("No of SO Lines"; Rec."No of SO Lines")
            {
                ApplicationArea = All;
            }
            field("Total Unit Price"; Rec."Total Unit Price")
            {
                ApplicationArea = All;
            }
            field("Sales Line Exist"; Rec."Sales Line Exist")
            {
                ApplicationArea = All;
            }
            field("Contact Email"; Rec."Contact Email")
            {
                ApplicationArea = All;
            }
        }
    }

    // trigger OnOpenPage()
    // begin
    //     Rec.CalcFields("No of SO Lines");
    //     Message(Rec.FieldName("No of SO Lines") + ' ' + Format(Rec."No of SO Lines"));
    // end;

}
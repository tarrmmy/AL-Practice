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
        }
    }

}
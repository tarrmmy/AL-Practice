tableextension 50105 "Sales Header Ext" extends "Sales Header"
{
    fields
    {
        field(50104; "No of SO Lines"; Integer)
        {
            Caption = 'No of SO Lines';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Sales Line" where("Document Type" = field("Document Type"), "Document No." = field("No.")));
        }
    }

}
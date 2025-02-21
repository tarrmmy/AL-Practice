tableextension 50105 "Sales Header Ext" extends "Sales Header"
{
    fields
    {
        // Count Flowfield
        field(50104; "No of SO Lines"; Integer)
        {
            Caption = 'No of SO Lines';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Sales Line" where("Document Type" = field("Document Type"), "Document No." = field("No.")));
        }

        // Sum Flowfield
        field(50105; "Total Unit Price"; Decimal)
        {
            Caption = 'Total Unit Price';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("Sales Line"."Unit Price" where("Document Type" = field("Document Type"), "Document No." = field("No.")));
        }
        // Exist Flowfield
        field(50106; "Sales Line Exist"; Boolean)
        {
            Caption = 'Sales Line Exist';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = exist("Sales Line" where("Document Type" = field("Document Type"), "Document No." = field("No.")));
        }
        // Lookup Flowfield
        field(50107; "Contact Email"; Text[80])
        {
            Caption = 'Contact Email';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Contact."E-Mail" where("No." = field("Sell-to Contact No.")));
        }

    }

}
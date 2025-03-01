pageextension 50117 MyExtension extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(CalculateCountingPeriod)
        {
            action(TestAction)
            {
                ApplicationArea = All;
                Caption = 'Test Action';
                Image = NewProperties;

                trigger OnAction()
                begin
                    Message('Hey, Testing Testing Action Feature.');
                end;
            }
        }
    }
}
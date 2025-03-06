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
        addfirst(navigation)
        {
            action(ItemSalesLines)
            // To open all the sales line where an item is present
            {
                ApplicationArea = All;
                Caption = 'Item Sales Lines';
                Image = AllLines;
                // This defines that you want to open the 'sales line'
                RunObject = page "Sales Lines";
                // Specifies A link
                RunPageLink = "No." = field("No."), Type = const(Item);
            }
        }
        // Promoting actions on a card, especially for quick access.
        addfirst(Category_Process)
        {
            actionref(TestAction_Promoted; TestAction)
            {

            }
        }
    }
}
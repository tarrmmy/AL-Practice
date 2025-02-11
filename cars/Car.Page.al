page 50110 Cars
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Car;

    layout
    {
        area(Content)
        {
            repeater(repeater1)
            {
                field(Car; Rec.Car)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the car code.';
                }

                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the car Model.';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }
}
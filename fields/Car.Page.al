page 50210 Cars
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
    }
}
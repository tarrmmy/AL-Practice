page 50215 PageName
{
    Caption = 'Bikes';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Bike;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Bike; Rec.Bike)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the bike code';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'This describes the Bike.';
                }
                field(Blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                    ToolTip = 'This shows the status of a Bike.';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    views
    {
        view(ActiveBikes)
        {
            Caption = 'Active Bikes';
            Filters = where(Blocked = const(false));
        }

        view(BlockedBikes)
        {
            Caption = 'Inactive Bikes';
            Filters = where(Blocked = const(true));
        }
    }
}
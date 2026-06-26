page 50206 "New Action Page"
{
    Caption = 'New Action Page';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = MyTable;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Code; Rec.Code)
                {

                }
                field(Description; Rec.Description)
                {

                }
                field(ItemNo; Rec."Item No.")
                {

                }
                field(CreatedAt; Rec."Created At")
                {

                }
                field(ChangedAt; Rec."Changed At")
                {

                }
            }
        }
    }
}
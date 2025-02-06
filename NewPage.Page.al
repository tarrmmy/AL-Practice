page 50106 "My New Page"
{
    Caption = 'My New Pages';
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
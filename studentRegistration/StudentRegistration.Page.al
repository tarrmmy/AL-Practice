page 50230 "Student Registration"
{
    Caption = 'Student Registration';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "StudentRegistration";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(StudentNo; Rec."Student No.")
                {
                }
                field(StudentName; Rec."Student Name")
                {
                }
                field(RegistrationDate; Rec."Registration Date")
                {
                }
                field(Completed; Rec."Completed")
                {
                }
            }
        }

    }
}
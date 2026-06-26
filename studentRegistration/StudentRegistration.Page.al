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

    actions
    {
        area(Processing)
        {
            action(MarkAsCompleted)
            {
                Caption = 'Mark As Completed';
                ApplicationArea = All;
                ToolTip = 'Marks when an action is completed';

                trigger OnAction();
                begin
                    Rec."Registration Date" := WorkDate();
                    Rec.Completed := true;
                    Rec.Modify();
                end;
            }
        }
    }
}
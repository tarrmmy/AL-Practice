report 50218 CustomerCars
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'CustCars.rdl';

    dataset
    {
        dataitem(DataItemName; Customer)
        {
            column(No; "No.")
            {

            }
            column(Name; Name)
            {

            }
            column(Car; Car)
            {

            }
        }
    }
}
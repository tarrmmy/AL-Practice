tableextension 50212 CustomerExt extends Customer
{
    fields
    {
        field(50111; Car; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer Car';
            TableRelation = Car.Car;
        }
    }

}
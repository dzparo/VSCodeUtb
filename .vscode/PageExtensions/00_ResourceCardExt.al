pageextension 123456700 ResourceCardExt extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("Resource Type";"CSD_Resource Type")
            {

            }
            field("Quantity per Day";"CSD_Quantity per Day")
            {

            }
        }
        addafter("Personal Data")
        {
            group("Room")
            {
                Caption='Room';
                field("Maximum Participants";"CSD_Maximum Participants")
                {
                    Visible = ShowMaxField;
                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
   
    trigger OnOpenPage();
    begin
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update(false);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;

}
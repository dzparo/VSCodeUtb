pageextension 123456701 CSD_ResourceListExt extends "Resource List"
//180507 DZPARO: New page
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
    
        addafter(Type)
        {
            field("Resource Type";"CSD_Resource Type")
            {
                
            }
            field("Maximum Participants";"CSD_Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }
 
    trigger OnOpenPage();
    begin

        FilterGroup(3);

        ShowType := (GetFilter(Type)='');
        ShowMaxField := (GetFilter(Type)=format(Type::Machine));

        FilterGroup(0);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;

        [InDataSet]
        ShowType: Boolean;

}
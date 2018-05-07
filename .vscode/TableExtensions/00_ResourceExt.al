tableextension 123456700 CSD_ResourceExt extends Resource
//CSD1.00 180507 DZPARO
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate();
            begin
                Rec.TestField("Unit Cost");    
            end;
        }
        field(123456701;"CSD_Resource Type";Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal","External";
        }
        field(123456702;"CSD_Maximum Participants";Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(123456703;"CSD_Quantity per Day";Decimal)
        {
            Caption = 'Quantity per Day';
        }
    }    
}
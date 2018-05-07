page 123456701 "Seminar Card"
{
    PageType = Card;
    SourceTable = Seminar;
    Caption = 'Seminar';

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("No.";"No.")
                {
                    
                }
                field("Name";Name)
                {
                    
                }
                field("Search Name";"Search Name")
                {
                    
                }
                field("Seminar Duration";"Seminar Duration")
                {
                    
                }
                field("Minimum Participants";"Minimum Participants")
                {
                    
                }  
                field("Blocked";"Blocked")
                {
                    
                }
                field("Last Date Modified";"Last Date Modified")
                {
                    
                }                                                                                              
            }
            group(Invoicing)
            {
                Caption='Invioicing';
                field("Gen. Prod. Posting Group";"Gen. Prod. Posting Group")
                {
                    
                }
                field("VAT Prod. Posting Group";"VAT Prod. Posting Group")
                {
                    
                }
                field("Seminar Price";"Seminar Price")
                {
                    
                }               
            }
        }
        area(FactBoxes)
        {
            systempart("Links";Links)
            {

            }
            systempart("Notes";Notes)
            {

            }
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
    
    var
        myInt : Integer;
}
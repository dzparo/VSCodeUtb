table 123456701 Seminar
{ 
    
    fields
    {
        field(10;"No.";Code[20])
        {
            Caption = 'No.';
        }
        field(20;Name;Text[50])
        {
            Caption = 'Name';
        }   
        field(30;"Seminar Duration";Decimal)
        {
            Caption = 'Seminar Duration';
            DecimalPlaces = 0:1;
        }   
        field(40;"Minimum Participants";Integer)
        {
            Caption ='Minimum Participants';
        }  
        field(50;"Maximum Participants";Integer)
        {
            Caption ='Maximum Participants';
        }  
        field(60;"Search Name";Code[50])
        {
            Caption = 'Search Name';
        }
        field(70;Blocked;Boolean)
        {
            Caption = 'Blocked';
        }
        field(80;"Last date Modified";Date)
        {
            Caption = 'Last Date Modified';
        }
        field(90;Comment;Boolean)
        {
            Caption = 'Comment';
        }
        
    }

    keys
    {
        key(PK;MyField)
        {
            Clustered = true;
        }
    }
    
    var
        myInt : Integer;

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}
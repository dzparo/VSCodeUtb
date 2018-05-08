report 123456701 "SeminarRegParticipantList"
{   
    Caption = 'Seminar Reg. Participant List';
    DefaultLayout = RDLC;
    UsageCategory = ReportsAndAnalysis;
    //RDLCLayout = './Layouts/SeminarRegParticipants.rdl';
    dataset
    {
        dataitem(SeminarRegistrationHeader;"Seminar Registration Header")
        {
            DataItemTableView=sorting("No.");
            RequestFilterFields="No.","Seminar No.";

            column(No_;"No.")
            {
                Includecaption = true;
            }
            column(Seminar_No_;"Seminar No.")
            {
                Includecaption = true;
            }
            column(Seminar_Name;"Seminar Name")
            {
                Includecaption = true;
            }
            column(Starting_Date;"Starting Date")
            {
                Includecaption = true;
            }  
            column(Duration;Duration)
            {
                Includecaption = true;
            }     
            column(Instructor_Name;"Instructor Name")
            {
                Includecaption = true;
            }     
            column(Room_Name;"Room Name")
            {
                Includecaption = true;
            }     
            dataitem(SeminarRegistrationLine;"Seminar Registration Line")  
            {
                DataItemTableView = sorting("Document No.","Line No.");
                DataItemLink = "Document no."=field("No.");
                
                column(Bill_to_Customer_No_;"Bill-to Customer No.")
                {
                    Includecaption = true;
                }
                column(Participant_Contact_No_;"Participant Contact No.")
                {
                    Includecaption = true;
                }
                column(Participant_Name;"Participant Name")
                {
                    Includecaption = true;
                }
            }                                                        
        }
        dataitem(CompanyInformation;"Company Information")
        {
            column(CompanyName;CompanyName)
            {

            }
            column(Picture;Picture)
            {

            }
        }
    }
}
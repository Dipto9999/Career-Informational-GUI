% programmer: Muntakim Rahman
%
%       date: 2014-12-19
%
% file name: Careers_Project.t
%
%    purpose: To display information regarding a profession in the computer
%             science department as well as examples of post-secondary 
%             education for the job field using Graphical User Interface.
%

% importing GUI for use within the program
import GUI

% declaration of variables and initialization
var CareerPageButton : int
var EducationPageButton : int
var EmployersPageButton : int := 0
var EvenMoreReferencesPageButton : int := 0
var EvenMoreReferencesPage2Button : int := 0
var EvenMoreReferencesPage3Button : int := 0
var HomePageButton : int
var JobDutiesPageButton : int := 0
var JobTitlesPageButton : int := 0
var MarketPageButton : int := 0
var MoreReferencesPageButton : int := 0
var Program1PageButton : int := 0
var Program2PageButton : int := 0
var Program3PageButton : int := 0
var QuitButton : int
var ReferencesPageButton : int
var RequirementsPageButton : int := 0
var Title1 : int
var WebsiteDesigner := Pic.FileNew ("website-designer.jpg")

% initialize Title_1 to have a different font and size
Title1 := Font.New ("comicsans:30")

% pre-declare the procedures in the program
forward procedure CareerPage
forward procedure EducationPage
forward procedure EmployersPage
forward procedure EvenMoreReferencesPage
forward procedure EvenMoreReferencesPage2
forward procedure EvenMoreReferencesPage3
forward procedure HomePage
forward procedure JobDutiesPage
forward procedure JobTitlesPage
forward procedure MarketPage
forward procedure MoreReferencesPage
forward procedure Program1Page
forward procedure Program2Page
forward procedure Program3Page
forward procedure ReferencesPage
forward procedure RequirementsPage
forward procedure ShowButtons

% procedure to set window size
View.Set ("graphics: 840; 550")
% procedure to set window title
Window.Set (defWinId, "title: Homepage")
% procedure to set background colour
GUI.SetBackgroundColour (gray)

% procedure to display information from a .txt file,
% while invoking the procedure cls to clear screen as well as
% ShowButtons to show the buttons made using GUI
body procedure CareerPage
    % declaration of variables to be invoked in the procedure
    var FileNumber : int
    var Line : string
    % cls predefined procedure which is used to clear the screen
    cls

    % procedure to set window size
    View.Set ("graphics: 840; 550")
    % procedure to set window title
    Window.Set (defWinId, "title: Career")
    % procedure to set background colour
    GUI.SetBackgroundColour (gray)

    % open Career.txt, assigning the file a
    % number to the variable FileNumber
    open : FileNumber, "Career.txt", get
    loop
	% exit when end of file character in FileNumber
	exit when eof (FileNumber)
	% get operation for the Line string searched for in the file
	get : FileNumber, Line : *
	% setting the background colour of the text received from the
	% .txt file to gray
	colourback (gray)
	put Line
    end loop
    % close the file using FileNumber
    close : FileNumber

    % invoke ShowButtons
    ShowButtons
    if EmployersPageButton > 0 then
	% hide EmployersPageButton
	GUI.Hide (EmployersPageButton)
    end if
    if EvenMoreReferencesPageButton > 0 then
	% hide EvenMoreReferencesPageButton
	GUI.Hide (EvenMoreReferencesPageButton)
    end if
    if EvenMoreReferencesPage2Button > 0 then
	% hide EvenMoreReferencesPage2Button
	GUI.Hide (EvenMoreReferencesPage2Button)
    end if
    if EvenMoreReferencesPage3Button > 0 then
	% hide EvenMoreReferencesPage3Button
	GUI.Hide (EvenMoreReferencesPage3Button)
    end if
    if JobDutiesPageButton > 0 then
	% hide JobDutiesPageButton
	GUI.Hide (JobDutiesPageButton)
    end if
    if MarketPageButton > 0 then
	% hide MarketPageButton
	GUI.Hide (MarketPageButton)
    end if
    if MoreReferencesPageButton > 0 then
	% hide MoreReferencesPageButton
	GUI.Hide (MoreReferencesPageButton)
    end if
    if Program1PageButton > 0 then
	% hide Program1PageButton
	GUI.Hide (Program1PageButton)
    end if
    if Program2PageButton > 0 then
	% hide Program2PageButton
	GUI.Hide (Program2PageButton)
    end if
    if Program3PageButton > 0 then
	% hide Program3PageButton
	GUI.Hide (Program3PageButton)
    end if
    if RequirementsPageButton > 0 then
	% hide RequirementsPageButton
	GUI.Hide (RequirementsPageButton)
    end if
    % Button created using GUI to
    % display different Job Titles
    JobTitlesPageButton := GUI.CreateButton
	(600, 50, 155, "Job Titles", JobTitlesPage)
end CareerPage

% procedure to display information from a .txt file,
% while invoking the procedure cls to clear screen as well as
% ShowButtons to show the buttons made using GUI
body procedure EducationPage
    % cls predefined procedure which is used to clear the screen
    cls

    % procedure to set window size
    View.Set ("graphics: 840; 550")
    % procedure to set window title
    Window.Set (defWinId, "title: Education")
    % procedure to set background colour
    GUI.SetBackgroundColour (gray)

    % invoke ShowButtons
    ShowButtons
    if EmployersPageButton > 0 then
	% hide EmployersPageButton
	GUI.Hide (EmployersPageButton)
    end if
    if EvenMoreReferencesPageButton > 0 then
	% hide EvenMoreReferencesPageButton
	GUI.Hide (EvenMoreReferencesPageButton)
    end if
    if EvenMoreReferencesPage2Button > 0 then
	% hide EvenMoreReferencesPage2Button
	GUI.Hide (EvenMoreReferencesPage2Button)
    end if
    if EvenMoreReferencesPage3Button > 0 then
	% hide EvenMoreReferencesPage3Button
	GUI.Hide (EvenMoreReferencesPage3Button)
    end if
    if JobDutiesPageButton > 0 then
	% hide JobDutiesPageButton
	GUI.Hide (JobDutiesPageButton)
    end if
    if JobTitlesPageButton > 0 then
	% hide JobTitlesPageButton
	GUI.Hide (JobTitlesPageButton)
    end if
    if MarketPageButton > 0 then
	% hide MarketPageButton
	GUI.Hide (MarketPageButton)
    end if
    if MoreReferencesPageButton > 0 then
	% hide MoreReferencesPageButton
	GUI.Hide (MoreReferencesPageButton)
    end if
    if RequirementsPageButton > 0 then
	% hide RequirementsPageButton
	GUI.Hide (RequirementsPageButton)
    end if
    % Button created using GUI to
    % display the first program for
    % web developers and/or web designers
    Program1PageButton := GUI.CreateButton
	(500, 50, 155, "Website Development: Strategy & Execution", Program1Page)
    % Button created using GUI to
    % display the second program for
    % web developers and/or web designers
    Program2PageButton := GUI.CreateButton
	(500, 80, 155, "Web Design, Development and Maintenance", Program2Page)
    % Button created using GUI to
    % display the third program for
    % web developers and/or web designers
    Program3PageButton := GUI.CreateButton
	(500, 110, 155, "Web Design - LCA.C0", Program3Page)
end EducationPage

% procedure to display information from a .txt file,
% while invoking the procedure cls to clear screen as well as
% ShowButtons to show the buttons made using GUI
body procedure EmployersPage
    % declaration of variables to be invoked in the procedure
    var FileNumber : int
    var Line : string
    % cls predefined procedure which is used to clear the screen
    cls

    % procedure to set window size
    View.Set ("graphics: 840; 550")
    % procedure to set window title
    Window.Set (defWinId, "title: Employers")
    % procedure to set background colour
    GUI.SetBackgroundColour (gray)

    % open Employers.txt, assigning the file a
    % number to the variable FileNumber
    open : FileNumber, "Employers.txt", get
    loop
	% exit when end of file character in FileNumber
	exit when eof (FileNumber)
	% get operation for the Line string searched for in the file
	get : FileNumber, Line : *
	% setting the background colour of the text received from the
	% .txt file to gray
	colourback (gray)
	put Line
    end loop
    % close the file using FileNumber
    close : FileNumber

    % invoke ShowButtons
    ShowButtons
    if EmployersPageButton > 0 then
	% hide EmployersPageButton
	GUI.Hide (EmployersPageButton)
    end if
end EmployersPage

% procedure to display information from a .txt file,
% while invoking the procedure cls to clear screen as well as
% ShowButtons to show the buttons made using GUI
body procedure EvenMoreReferencesPage
    % declaration of variables to be invoked in the procedure
    var FileNumber : int
    var Line : string
    % cls predefined procedure which is used to clear the screen
    cls

    % procedure to set window size
    View.Set ("graphics: 840; 550")
    % procedure to set window title
    Window.Set (defWinId, "title: References")
    % procedure to set background colour
    GUI.SetBackgroundColour (gray)

    % open Works_Cited_2.txt, assigning the file a
    % number to the variable FileNumber
    open : FileNumber, "Works_Cited_2.txt", get
    loop
	% exit when end of file character in FileNumber
	exit when eof (FileNumber)
	% get operation for the Line string searched for in the file
	get : FileNumber, Line : *
	% setting the background colour of the text received from the
	% .txt file to gray
	colourback (gray)
	put Line
    end loop
    % close the file using FileNumber
    close : FileNumber

    % invoke ShowButtons
    ShowButtons
    if EvenMoreReferencesPageButton > 0 then
	% hide EvenMoreReferencesPageButton
	GUI.Hide (EvenMoreReferencesPageButton)
    end if
    % Button created using GUI to
    % display more references
    EvenMoreReferencesPage2Button := GUI.CreateButton
	(600, 50, 155, "Page 4", EvenMoreReferencesPage2)
end EvenMoreReferencesPage

% procedure to display information from a .txt file,
% while invoking the procedure cls to clear screen as well as
% ShowButtons to show the buttons made using GUI
body procedure EvenMoreReferencesPage2
    % declaration of variables to be invoked in the procedure
    var FileNumber : int
    var Line : string
    % cls predefined procedure which is used to clear the screen
    cls

    % procedure to set window size
    View.Set ("graphics: 840; 550")
    % procedure to set window title
    Window.Set (defWinId, "title: References")
    % procedure to set background colour
    GUI.SetBackgroundColour (gray)

    % open Works_Cited_3.txt, assigning the file a
    % number to the variable FileNumber
    open : FileNumber, "Works_Cited_3.txt", get
    loop
	% exit when end of file character in FileNumber
	exit when eof (FileNumber)
	% get operation for the Line string searched for in the file
	get : FileNumber, Line : *
	% setting the background colour of the text received from the
	% .txt file to gray
	colourback (gray)
	put Line
    end loop
    % close the file using FileNumber
    close : FileNumber

    % invoke ShowButtons
    ShowButtons
    if EvenMoreReferencesPage2Button > 0 then
	% hide EvenMoreReferencesPage2Button
	GUI.Hide (EvenMoreReferencesPage2Button)
    end if
    % Button created using GUI to
    % display more references
    EvenMoreReferencesPage3Button := GUI.CreateButton
	(600, 50, 155, "Page 5", EvenMoreReferencesPage3)
end EvenMoreReferencesPage2

% procedure to display information from a .txt file,
% while invoking the procedure cls to clear screen as well as
% ShowButtons to show the buttons made using GUI
body procedure EvenMoreReferencesPage3
    % declaration of variables to be invoked in the procedure
    var FileNumber : int
    var Line : string
    % cls predefined procedure which is used to clear the screen
    cls

    % procedure to set window size
    View.Set ("graphics: 840; 550")
    % procedure to set window title
    Window.Set (defWinId, "title: References")
    % procedure to set background colour
    GUI.SetBackgroundColour (gray)

    % open Works_Cited_4.txt, assigning the file a
    % number to the variable FileNumber
    open : FileNumber, "Works_Cited_4.txt", get
    loop
	% exit when end of file character in FileNumber
	exit when eof (FileNumber)
	% get operation for the Line string searched for in the file
	get : FileNumber, Line : *
	% setting the background colour of the text received from the
	% .txt file to gray
	colourback (gray)
	put Line
    end loop
    % close the file using FileNumber
    close : FileNumber

    % invoke ShowButtons
    ShowButtons
    if EvenMoreReferencesPage3Button > 0 then
	% hide EvenMoreReferencesPage3Button
	GUI.Hide (EvenMoreReferencesPage3Button)
    end if
end EvenMoreReferencesPage3

% procedure to provide a title-like text of different font
% and size as well as an image, both in defined location,
% while invoking the procedure cls to clear the screen as well as
% ShowButtons to show the buttons made using GUI
body procedure HomePage
    % cls predefined procedure which is used to clear the screen
    cls

    % procedure to set window size
    View.Set ("graphics: 840; 550")
    % procedure to set window title
    Window.Set (defWinId, "title: Home")
    % procedure to set background colour
    GUI.SetBackgroundColour (gray)

    % invoke ShowButtons
    ShowButtons
    if EmployersPageButton > 0 then
	% hide EmployersPageButton
	GUI.Hide (EmployersPageButton)
    end if
    if EvenMoreReferencesPageButton > 0 then
	% hide EvenMoreReferencesPageButton
	GUI.Hide (EvenMoreReferencesPageButton)
    end if
    if EvenMoreReferencesPage2Button > 0 then
	% hide EvenMoreReferencesPage2Button
	GUI.Hide (EvenMoreReferencesPage2Button)
    end if
    if EvenMoreReferencesPage3Button > 0 then
	% hide EvenMoreReferencesPage3Button
	GUI.Hide (EvenMoreReferencesPage3Button)
    end if
    if JobDutiesPageButton > 0 then
	% hide JobDutiesPageButton
	GUI.Hide (JobDutiesPageButton)
    end if
    if JobTitlesPageButton > 0 then
	% hide JobTitlesPageButton
	GUI.Hide (JobTitlesPageButton)
    end if
    if MarketPageButton > 0 then
	% hide MarketPageButton
	GUI.Hide (MarketPageButton)
    end if
    if MoreReferencesPageButton > 0 then
	% hide MoreReferencesPageButton
	GUI.Hide (MoreReferencesPageButton)
    end if
    if Program1PageButton > 0 then
	% hide Program1PageButton
	GUI.Hide (Program1PageButton)
    end if
    if Program2PageButton > 0 then
	% hide Program2PageButton
	GUI.Hide (Program2PageButton)
    end if
    if Program3PageButton > 0 then
	% hide Program3PageButton
	GUI.Hide (Program3PageButton)
    end if
    if RequirementsPageButton > 0 then
	% hide RequirementsPageButton
	GUI.Hide (RequirementsPageButton)
    end if
    % using Title_1, "draw" a text of customized font and size to create a
    % title to inform the user of the program's contents
    Font.Draw ("NOC 2175: Web designers and developers", 55, 460, Title1, blue)

    % insert the image and define its location on the window screen
    Pic.Draw (WebsiteDesigner, 150, 80, 0)

end HomePage

% procedure to display information from a .txt file,
% while invoking the procedure cls to clear screen as well as
% ShowButtons to show the buttons made using GUI
body procedure JobDutiesPage
    % declaration of variables to be invoked in the procedure
    var FileNumber : int
    var Line : string
    % cls predefined procedure which is used to clear the screen
    cls

    % procedure to set window size
    View.Set ("graphics: 840; 550")
    % procedure to set window title
    Window.Set (defWinId, "title: Job Duties")
    % procedure to set background colour
    GUI.SetBackgroundColour (gray)

    % open Job_Duties.txt, assigning the file a
    % number to the variable FileNumber
    open : FileNumber, "Job_Duties.txt", get
    loop
	% exit when end of file character in FileNumber
	exit when eof (FileNumber)
	% get operation for the Line string searched for in the file
	get : FileNumber, Line : *
	% setting the background colour of the text received from the
	% .txt file to gray
	colourback (gray)
	put Line
    end loop
    % close the file using FileNumber
    close : FileNumber

    % invoke ShowButtons
    ShowButtons
    if JobDutiesPageButton > 0 then
	% hide JobDutiesPageButton
	GUI.Hide (JobDutiesPageButton)
    end if
    % button created to
    % display different statistics in the Market
    MarketPageButton := GUI.CreateButton
	(600, 50, 155, "The Market", MarketPage)
end JobDutiesPage

% procedure to display information from a .txt file,
% while invoking the procedure cls to clear screen as well as
% ShowButtons to show the buttons made using GUI
body procedure JobTitlesPage
    % declaration of variables to be invoked in the procedure
    var FileNumber : int
    var Line : string
    % cls predefined procedure which is used to clear the screen
    cls

    % procedure to set window size
    View.Set ("graphics: 840; 550")
    % procedure to set window title
    Window.Set (defWinId, "title: Job Titles")
    % procedure to set background colour
    GUI.SetBackgroundColour (gray)

    % open Job_Titles.txt, assigning the file a
    % number to the variable FileNumber
    open : FileNumber, "Job_Titles.txt", get
    loop
	% exit when end of file character in FileNumber
	exit when eof (FileNumber)
	% get operation for the Line string searched for in the file
	get : FileNumber, Line : *
	% setting the background colour of the text received from the
	% .txt file to gray
	colourback (gray)
	put Line
    end loop
    % close the file using FileNumber
    close : FileNumber

    % invoke ShowButtons
    ShowButtons
    if JobTitlesPageButton > 0 then
	% hide JobTitlesPageButton
	GUI.Hide (JobTitlesPageButton)
    end if
    % Button created using GUI to
    % display different Job Duties
    JobDutiesPageButton := GUI.CreateButton
	(600, 50, 155, "Job Duties", JobDutiesPage)
end JobTitlesPage

% procedure to display information from a .txt file,
% while invoking the procedure cls to clear screen as well as
% ShowButtons to show the buttons made using GUI
body procedure MarketPage
    % declaration of variables to be invoked in the procedure
    var FileNumber : int
    var Line : string
    % cls predefined procedure which is used to clear the screen
    cls

    % procedure to set window size
    View.Set ("graphics: 840; 550")
    % procedure to set window title
    Window.Set (defWinId, "title: The Market")
    % procedure to set background colour
    GUI.SetBackgroundColour (gray)

    % open Market.txt, assigning the file a
    % number to the variable FileNumber
    open : FileNumber, "Market.txt", get
    loop
	% exit when end of file character in FileNumber
	exit when eof (FileNumber)
	% get operation for the Line string searched for in the file
	get : FileNumber, Line : *
	% setting the background colour of the text received from the
	% .txt file to gray
	colourback (gray)
	put Line
    end loop
    % close the file using FileNumber
    close : FileNumber

    % invoke ShowButtons
    ShowButtons
    if MarketPageButton > 0 then
	% hide MarketPageButton
	GUI.Hide (MarketPageButton)
    end if
    % Button created using GUI to
    % display different requirements for the job
    RequirementsPageButton := GUI.CreateButton
	(600, 50, 155, "Requirements", RequirementsPage)
end MarketPage

% procedure to display information from a .txt file,
% while invoking the procedure cls to clear screen as well as
% ShowButtons to show the buttons made using GUI
body procedure MoreReferencesPage
    % declaration of variables to be invoked in the procedure
    var FileNumber : int
    var Line : string
    % cls predefined procedure which is used to clear the screen
    cls

    % procedure to set window size
    View.Set ("graphics: 840; 550")
    % procedure to set window title
    Window.Set (defWinId, "title: References")
    % procedure to set background colour
    GUI.SetBackgroundColour (gray)

    % open Works_Cited_1.txt, assigning the file a
    % number to the variable FileNumber
    open : FileNumber, "Works_Cited_1.txt", get
    loop
	% exit when end of file character in FileNumber
	exit when eof (FileNumber)
	% get operation for the Line string searched for in the file
	get : FileNumber, Line : *
	% setting the background colour of the text received from the
	% .txt file to gray
	colourback (gray)
	put Line
    end loop
    % close the file using FileNumber
    close : FileNumber

    % invoke ShowButtons
    ShowButtons
    if MoreReferencesPageButton > 0 then
	% hide MoreReferencesPageButton
	GUI.Hide (MoreReferencesPageButton)
    end if
    % Button created using GUI to
    % display more references
    EvenMoreReferencesPageButton := GUI.CreateButton
	(600, 50, 155, "Page 3", EvenMoreReferencesPage)
end MoreReferencesPage

% procedure to display information from a .txt file,
% while invoking the procedure cls to clear screen as well as
% ShowButtons to show the buttons made using GUI
body procedure Program1Page
    % declaration of variables to be invoked in the procedure
    var FileNumber : int
    var Line : string
    % cls predefined procedure which is used to clear the screen
    cls

    % procedure to set window size
    View.Set ("graphics: 840; 550")
    % procedure to set window title
    Window.Set (defWinId, "title: Education ")
    % procedure to set background colour
    GUI.SetBackgroundColour (gray)

    % open Education_1.txt, assigning the file a
    % number to the variable FileNumber
    open : FileNumber, "Education_1.txt", get
    loop
	% exit when end of file character in FileNumber
	exit when eof (FileNumber)
	% get operation for the Line string searched for in the file
	get : FileNumber, Line : *
	% setting the background colour of the text received from the
	% .txt file to gray
	colourback (gray)
	put Line
    end loop
    % close the file using FileNumber
    close : FileNumber

    % invoke ShowButtons
    ShowButtons
    if Program1PageButton > 0 then
	% hide Program1PageButton
	GUI.Hide (Program1PageButton)
    end if
    if Program2PageButton > 0 then
	% hide Program2PageButton
	GUI.Hide (Program2PageButton)
    end if
    if Program3PageButton > 0 then
	% hide Program3PageButton
	GUI.Hide (Program3PageButton)
    end if
end Program1Page

% procedure to display information from a .txt file,
% while invoking the procedure cls to clear screen as well as
% ShowButtons to show the buttons made using GUI
body procedure Program2Page
    % declaration of variables to be invoked in the procedure
    var FileNumber : int
    var Line : string
    % cls predefined procedure which is used to clear the screen
    cls

    % procedure to set window size
    View.Set ("graphics: 840; 550")
    % procedure to set window title
    Window.Set (defWinId, "title: Education ")
    % procedure to set background colour
    GUI.SetBackgroundColour (gray)

    % open Education_2.txt, assigning the file a
    % number to the variable FileNumber
    open : FileNumber, "Education_2.txt", get
    loop
	% exit when end of file character in FileNumber
	exit when eof (FileNumber)
	% get operation for the Line string searched for in the file
	get : FileNumber, Line : *
	% setting the background colour of the text received from the
	% .txt file to gray
	colourback (gray)
	put Line
    end loop
    % close the file using FileNumber
    close : FileNumber

    % invoke ShowButtons
    ShowButtons
    if Program1PageButton > 0 then
	% hide Program1PageButton
	GUI.Hide (Program1PageButton)
    end if
    if Program2PageButton > 0 then
	% hide Program2PageButton
	GUI.Hide (Program2PageButton)
    end if
    if Program3PageButton > 0 then
	% hide Program3PageButton
	GUI.Hide (Program3PageButton)
    end if
end Program2Page

% procedure to display information from a .txt file,
% while invoking the procedure cls to clear screen as well as
% ShowButtons to show the buttons made using GUI
body procedure Program3Page
    % declaration of variables to be invoked in the procedure
    var FileNumber : int
    var Line : string
    % cls predefined procedure which is used to clear the screen
    cls

    % procedure to set window size
    View.Set ("graphics: 840; 550")
    % procedure to set window title
    Window.Set (defWinId, "title: Education ")
    % procedure to set background colour
    GUI.SetBackgroundColour (gray)

    % open Education_3.txt, assigning the file a
    % number to the variable FileNumber
    open : FileNumber, "Education_3.txt", get
    loop
	% exit when end of file character in FileNumber
	exit when eof (FileNumber)
	% get operation for the Line string searched for in the file
	get : FileNumber, Line : *
	% setting the background colour of the text received from the
	% .txt file to gray
	colourback (gray)
	put Line
    end loop
    % close the file using FileNumber
    close : FileNumber

    % invoke ShowButtons
    ShowButtons
    if Program1PageButton > 0 then
	% hide Program1PageButton
	GUI.Hide (Program1PageButton)
    end if
    if Program2PageButton > 0 then
	% hide Program2PageButton
	GUI.Hide (Program2PageButton)
    end if
    if Program3PageButton > 0 then
	% hide Program3PageButton
	GUI.Hide (Program3PageButton)
    end if
end Program3Page

% procedure to display information from a .txt file,
% while invoking the procedure cls to clear screen as well as
% ShowButtons to show the buttons made using GUI
body procedure ReferencesPage
    % declaration of variables to be invoked in the procedure
    var FileNumber : int
    var Line : string
    % cls predefined procedure which is used to clear the screen
    cls

    % procedure to set window size
    View.Set ("graphics: 840; 550")
    % procedure to set window title
    Window.Set (defWinId, "title: References")
    % procedure to set background colour
    GUI.SetBackgroundColour (gray)

    % open Photo_Credit_And_Works_Cited.txt, assigning the file a
    % number to the variable FileNumber
    open : FileNumber, "Photo_Credit_And_Works_Cited.txt", get
    loop
	% exit when end of file character in FileNumber
	exit when eof (FileNumber)
	% get operation for the Line string searched for in the file
	get : FileNumber, Line : *
	% setting the background colour of the text received from the
	% .txt file to gray
	colourback (gray)
	put Line
    end loop
    % close the file using FileNumber
    close : FileNumber

    % invoke ShowButtons
    ShowButtons
    if EmployersPageButton > 0 then
	% hide EmployersPageButton
	GUI.Hide (EmployersPageButton)
    end if
    if EvenMoreReferencesPageButton > 0 then
	% hide EvenMoreReferencesPageButton
	GUI.Hide (EvenMoreReferencesPageButton)
    end if
    if EvenMoreReferencesPage2Button > 0 then
	% hide EvenMoreReferencesPage2Button
	GUI.Hide (EvenMoreReferencesPage2Button)
    end if
    if EvenMoreReferencesPage3Button > 0 then
	% hide EvenMoreReferencesPage3Button
	GUI.Hide (EvenMoreReferencesPage3Button)
    end if
    if JobDutiesPageButton > 0 then
	% hide JobDutiesPageButton
	GUI.Hide (JobDutiesPageButton)
    end if
    if JobTitlesPageButton > 0 then
	% hide JobTitlesPageButton
	GUI.Hide (JobTitlesPageButton)
    end if
    if MarketPageButton > 0 then
	% hide MarketPageButton
	GUI.Hide (MarketPageButton)
    end if
    if Program1PageButton > 0 then
	% hide Program1PageButton
	GUI.Hide (Program1PageButton)
    end if
    if Program2PageButton > 0 then
	% hide Program2PageButton
	GUI.Hide (Program2PageButton)
    end if
    if Program3PageButton > 0 then
	% hide Program3PageButton
	GUI.Hide (Program3PageButton)
    end if
    if RequirementsPageButton > 0 then
	% hide RequirementsPageButton
	GUI.Hide (RequirementsPageButton)
    end if

    % Button created using GUI to
    % display more references
    MoreReferencesPageButton := GUI.CreateButton
	(600, 50, 155, "Page 2", MoreReferencesPage)
end ReferencesPage

% procedure to display information from a .txt file,
% while invoking the procedure cls to clear screen as well as
% ShowButtons to show the buttons made using GUI
body procedure RequirementsPage
    % declaration of variables to be invoked in the procedure
    var FileNumber : int
    var Line : string
    % cls predefined procedure which is used to clear the screen
    cls

    % procedure to set window size
    View.Set ("graphics: 840; 550")
    % procedure to set window title
    Window.Set (defWinId, "title: Requirements")
    % procedure to set background colour
    GUI.SetBackgroundColour (gray)

    % open Requirements.txt, assigning the file a
    % number to the variable FileNumber
    open : FileNumber, "Requirements.txt", get
    loop
	% exit when end of file character in FileNumber
	exit when eof (FileNumber)
	% get operation for the Line string searched for in the file
	get : FileNumber, Line : *
	% setting the background colour of the text received from the
	% .txt file to gray
	colourback (gray)
	put Line
    end loop
    % close the file using FileNumber
    close : FileNumber

    % invoke ShowButtons
    ShowButtons
    if RequirementsPageButton > 0 then
	% hide RequirementsPageButton
	GUI.Hide (RequirementsPageButton)
    end if
    % button created to
    % display types and examples of employers
    EmployersPageButton := GUI.CreateButton
	(600, 50, 155, "Employers", EmployersPage)
end RequirementsPage

% procedure used to "show" buttons invoked after clearing the screen
% in other procedures
body procedure ShowButtons
    % GUI pre-determined procedures which "show" the buttons
    % if they are not visible due to reasons such as clearing the screen
    % in this situation
    GUI.Show (CareerPageButton)
    GUI.Show (EducationPageButton)
    GUI.Show (HomePageButton)
    GUI.Show (QuitButton)
    GUI.Show (ReferencesPageButton)
end ShowButtons

% using Title_1, "draw" a text of customized font and size to create a
% title to inform the user of the program's contents
Font.Draw ("NOC 2175: Web designers and developers", 55, 460, Title1, blue)

% insert the image and define its location on the window screen
Pic.Draw (WebsiteDesigner, 150, 80, 0)


% Buttons created using GUI to invoke various procedures when clicked and
% clear the screen using the pre-determined procedure cls as well as to
% display information from various .txt files onto the program window
HomePageButton := GUI.CreateButton
    (50, 10, 155, "Home", HomePage)
CareerPageButton := GUI.CreateButton
    (205, 10, 155, "Career", CareerPage)
EducationPageButton := GUI.CreateButton
    (360, 10, 155, "Education", EducationPage)
ReferencesPageButton := GUI.CreateButton
    (515, 10, 155, "References", ReferencesPage)
QuitButton := GUI.CreateButton
    (670, 10, 155, "Quit Program", GUI.Quit)


% processing
loop
    if GUI.ProcessEvent then
	% clear screen using cls procedure
	cls
	% procedure to set window title
	Window.Set (defWinId, "title: End of Program")
	% procedure to set background colour
	GUI.SetBackgroundColour (black)
	% procedure which hide the buttons to signify the program has ended
	GUI.Hide (HomePageButton)
	GUI.Hide (CareerPageButton)
	GUI.Hide (EducationPageButton)
	GUI.Hide (ReferencesPageButton)
	GUI.Hide (QuitButton)
	if EmployersPageButton > 0 then
	    % hide EmployersPageButton
	    GUI.Hide (EmployersPageButton)
	end if
	if EvenMoreReferencesPageButton > 0 then
	    % hide EvenMoreReferencesPageButton
	    GUI.Hide (EvenMoreReferencesPageButton)
	end if
	if EvenMoreReferencesPage2Button > 0 then
	    % hide EvenMoreReferencesPage2Button
	    GUI.Hide (EvenMoreReferencesPage2Button)
	end if
	if EvenMoreReferencesPage3Button > 0 then
	    % hide EvenMoreReferencesPage3Button
	    GUI.Hide (EvenMoreReferencesPage3Button)
	end if
	if JobDutiesPageButton > 0 then
	    % hide JobDutiesPageButton
	    GUI.Hide (JobDutiesPageButton)
	end if
	if JobTitlesPageButton > 0 then
	    % hide JobTitlesPageButton
	    GUI.Hide (JobTitlesPageButton)
	end if
	if MarketPageButton > 0 then
	    % hide MarketPageButton
	    GUI.Hide (MarketPageButton)
	end if
	if MoreReferencesPageButton > 0 then
	    % hide MoreReferencesPageButton
	    GUI.Hide (MoreReferencesPageButton)
	end if
	if Program1PageButton > 0 then
	    % hide Program1PageButton
	    GUI.Hide (Program1PageButton)
	end if
	if Program2PageButton > 0 then
	    % hide Program2PageButton
	    GUI.Hide (Program2PageButton)
	end if
	if Program3PageButton > 0 then
	    % hide Program3PageButton
	    GUI.Hide (Program3PageButton)
	end if
	if RequirementsPageButton > 0 then
	    % hide RequirementsPageButton
	    GUI.Hide (RequirementsPageButton)
	end if

	% sentinel value which is the result GUI.ProcessEvent and is true when
	% GUI.Quit returns true
	exit when true
    end if
end loop







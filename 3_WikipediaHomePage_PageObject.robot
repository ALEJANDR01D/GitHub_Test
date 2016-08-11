Library        Selenium2Library
Library        OperatingSystem


*** Keywords ***
Open Browser To Wikipedia Home Page
	BuiltIn.Log  -----1.1.1-----Open Browser To Wikipedia Home Page----------START----------
    Open Browser  ${HOME PAGE URL}  ${BROWSER}
    BuiltIn.Log  -----1.1.1.1-----Open Browser ${HOME PAGE URL} ${BROWSER}--------------------
    Maximize Browser Window
    BuiltIn.Log  -----1.1.1.2-----Maximize Browser Window --------------------
    Set Selenium Speed  ${DELAY}
    BuiltIn.Log  -----1.1.1.3-----Set Selenium Speed:${DELAY}--------------------
    Title Should Be  Wikipedia
    BuiltIn.Log  -----1.1.1.4-----Title Should Be Wikipedia--------------------
	BuiltIn.Log  -----1.1.1-----Open Browser To Wikipedia Home Page----------END----------

Search For Nissan 240SX
        BuiltIn.Log  -----1.1.2-----Search For Nissan 240SX----------START----------
        Page Should Contain Element  searchInput
        BuiltIn.Log  -----1.1.2.0-----Page Should Contain Element "searchInput" --------------------
        Input Text  id=searchInput  text=Nissan 240sx
        BuiltIn.Log  -----1.1.2.1-----Input Text searchInput Nissan 240sx--------------------
        Page Should Contain Element  go
        BuiltIn.Log  -----1.1.2.0-----Page Should Contain Element "go"--------------------
        #Click Button  name=go
        Click Button css=button.formBtn
        #Submit Form  css=search-form  Can't locate Form by CSS,
        #If locator is empty, first form in the page will be submitted:
        Submit Form
        BuiltIn.Log  -----1.1.2.2-----Click Button go--------------------
        BuiltIn.Log  -----1.1.2-----Search For Nissan 240SX----------END----------



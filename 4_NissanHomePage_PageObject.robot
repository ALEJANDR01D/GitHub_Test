Library        Selenium2Library

*** Keywords ***
Verify Nissan 240SX Page
        BuiltIn.Log  -----1.1.3-----Verify Nissan 240SX Page----------START----------
        Title Should Be  Nissan 240SX - Wikipedia, the free encyclopedia
        BuiltIn.Log  -----1.1.3-----Verify Nissan 240SX Page----------END----------

Click Link and goto Nissan Motors Page
        BuiltIn.Log  -----1.2.1-----Click Link and goto Nissan Motors Page----------START----------
        Click Link  link=Nissan
        BuiltIn.Log  -----1.2.1-----Click Link and goto Nissan Motors Page----------END----------
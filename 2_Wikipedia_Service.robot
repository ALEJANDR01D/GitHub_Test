*** Settings ***
Documentation  A resource file containing the application specific keywords
...            that create our own domain specific language. This resource
...            implements a service resource
Library        Selenium2Library
Library        OperatingSystem
Resource       3_WikipediaHomePage_PageObject.robot
Resource       4_NissanHomePage_PageObject.robot
Resource       5_NissanMotorsHomePage_PageObject.robot


*** Variables ***
${SERVER}               www.wikipedia.org
${BROWSER}              firefox
${DELAY}                1   #Sets the delay in seconds that is waited after each Selenium command
${HOME PAGE URL}        http://${SERVER}



*** Keywords ***
# Uses Wikipedia and Nissan 240sx Page Resources
Search for Nissan 240SX on Wikipedia
        BuiltIn.Log  -----1.1-----Search for Nissan 240SX on Wikipedia----------START----------
        Open Browser To Wikipedia Home Page
        Search For Nissan 240SX
        Verify Nissan 240SX Page
		BuiltIn.Log  -----1.1-----Search for Nissan 240SX on Wikipedia----------END----------
# Uses Nissan 240sx and Nissan Motors Page Resources
From Nissan 240SX page goto Nissan Motors Page
        BuiltIn.Log  -----1.2-----From Nissan 240SX page goto Nissan Motors Page----------START----------
        Click Link and goto Nissan Motors Page
        Verify Nissan Motors Page
        BuiltIn.Log  -----1.2-----From Nissan 240SX page goto Nissan Motors Page----------END----------


*** Settings ***
Documentation    A test suite with a single test for try page objects
...              against the Wikipedia Site

Resource  2_Wikipedia_Service.robot


*** Test Cases ***
# This Test Case doesn't use the the Page Objects, it uses a higher level wikipedia resource
# There is a single test case that uses two keywords from the Wikipedia service.
Goto Nissan Motors Page Via Searching and Clicking
  BuiltIn.Log  -----1-----Goto Nissan Motors Page Via Searching and Clicking----------START----------
  Search for Nissan 240SX on Wikipedia
  From Nissan 240SX page goto Nissan Motors Page
  #[Teardown]Close Browser
  BuiltIn.Log  -----1-----Goto Nissan Motors Page Via Searching and Clicking----------END----------


*** Keywords ***
#Log TestRun
#  ${html_src}=Log Source
#  Run Keyword If Test Failed  Create File  target/robot/myerror.html  ${html_src}
#  Close Browser

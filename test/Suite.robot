*** Settings ***
Library           OperatingSystem    WITH NAME    os

*** Test Cases ***
my-app-test
    ${rc}    ${result}=    os.Run And Return Rc And Output    my-app.cmd
    Should Be Equal    ${rc}    ${0}
    Should Be Equal    ${result}    success!


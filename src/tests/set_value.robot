*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***

When value 5 is inserted the value is 5
    Go To  ${HOME_URL}
    Click  button >> text=Nollaa
    Fill Text  input[name="value"]  5
    Click  input[value="aseta"]
    Get Text  body  *=  nappia painettu 5 kertaa
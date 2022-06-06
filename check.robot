*** Settings ***

Library     SeleniumLibrary

*** Variables ***


${URL}=         https://myanimelist.net/
${browser}=    firefox

*** Test Cases ***

Add to library as an unregistered user
        open browser                    ${URL}  ${browser}
        Sleep                           3
        click element                   xpath://*[@id="qc-cmp2-ui"]
        click element                   xpath://*[@id="qc-cmp2-ui"]/div[2]/div/button[1]
        Sleep                           3
        click element                   xpath://*[@id="widget-seasonal-video"]/div[3]/ul/li[3]/a/img
        Sleep                           3
        click element                   xpath://*[@id="content"]/table/tbody/tr/td[2]/div[1]/table/tbody/tr[1]/td/div[1]/div[1]/div[1]/div[2]/a
        Sleep                           3
        Page Should Contain Element     xpath://*[@id="content"]/div
        close browser
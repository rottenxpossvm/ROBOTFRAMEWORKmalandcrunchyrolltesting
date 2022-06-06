*** Settings ***

Library     SeleniumLibrary
*** Variables ***


${URL}=         https://myanimelist.net/
${browser}=    firefox

*** Test Cases ***

Enter anime's Crunchyroll webpage
        open browser                    ${URL}  ${browser}
        Sleep                           3
        click element                   xpath://*[@id="qc-cmp2-ui"]
        click element                   xpath://*[@id="qc-cmp2-ui"]/div[2]/div/button[1]
        Sleep                           3
        click element                   xpath://*[@id="widget-seasonal-video"]/div[3]/ul/li[3]/a/img
        Sleep                           3
        Execute JavaScript              window.scroll(0,1000)
        Scroll Element Into View        xpath://*[@id="content"]/table/tbody/tr/td[1]/div/div[31]/div[1]/a/div
        Wait Until Element is visible   xpath://*[@id="content"]/table/tbody/tr/td[1]/div/div[31]/div[1]/a/div     timeout=5s
        Set Focus To Element            xpath://*[@id="content"]/table/tbody/tr/td[1]/div/div[31]/div[1]/a/div
        click element                   xpath://*[@id="content"]/table/tbody/tr/td[1]/div/div[31]/div[1]/a/div
        Sleep                           3
        Page Should Contain Element     xpath://*[@id="sidebar_elements"]/li[1]/img
        Page Should Contain Element     xpath://*[@id="showview_content_videos"]/ul/li[1]/a
        close browser
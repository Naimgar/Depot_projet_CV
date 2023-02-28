*** Settings ***
Documentation    documentation CVNAIM
Library           SeleniumLibrary 


*** Variables ***

${URL}=    https://naimgar.github.io/NaimCV/index.html
${browser}=    chrome

*** Test Cases ***
Ouverture du navigateur
    Open Browser    ${URL}    ${browser}   
    Maximize Browser Window
    Sleep    4
  
Test de la strucrures de la page
    Click Link    xpath://a[@title='Education']
    Sleep    4
    Execute Javascript    window.scrollTo(0,1000)
    Sleep    3
    Execute Javascript    window.scrollTo(0,-5000)
    Sleep    2
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    Sleep    3
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)
    Sleep    4
capture de l'ecran
    capture de l'ecran
verfier le titre de la page
    verfier le titre de la page
verfier adresse url de la page
    verfier adresse url de la page
verfier le reste des elements de la page
    verfier le reste des elements de la page
verfier des liens dans la page
    verfier les liens dans la page
verfier le lien vers le pdf
    verfier le lien vers le pdf
Verification des elements internes
    verifier la page du cv
Fermer le navigateur
    Close Browser

*** Keywords ***
verifier la page du cv

    Page Should Contain    COMPETANCES TECHNIQUES
    Sleep    2
    Page Should Contain    FORMATIONS
    Sleep    2
    Page Should Contain    About Me
    Sleep    2
    Page Should Contain Image    xpath://img[@class='img-thumbnail shadow-2-strong']
    Sleep    2
verfier le titre de la page 
    Title Should Be  CV NAIM Garouachi
verfier adresse url de la page
    Location Should Be  https://naimgar.github.io/NaimCV/index.html#education
verfier le reste des elements de la page
    Page Should Contain Element  xpath=//h2[text()='Contact']
    Page Should Contain Element  xpath=//h2[text()='Experience']
verfier les liens dans la page
    Page Should Contain Link  xpath=//a[@title='Skills']
    Page Should Contain Link  xpath=//a[@title='Education']
verfier le lien vers le pdf
    Page Should Contain Element  xpath=//a[text()='Telecharger mon CV']
capture de l'ecran
    Capture Page Screenshot  page1.png 
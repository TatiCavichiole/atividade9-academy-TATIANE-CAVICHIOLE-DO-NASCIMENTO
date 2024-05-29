*** Settings ***

Resource        ../../base.robot

*** Keywords ***

Espera o elemento e faz o click
    [Arguments]     ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Click Element                    ${elemento}    
*** Settings ***

Library        AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}           UIAutomator2
${ANDROID_PLATFORM_NAME}             Android
${ANDROID_PLATFORM_VERSION}          11
${ANDROID_APP_ACTIVITY}              com.ricardodalarme.nubank_clone
${ANDROID_APP_PACKAGE}               .MainActivity


*** Keywords ***
Open app
    Open Application    http://192.168.1.19:4723/    automationName=${ANDROID_AUTOMATION_NAME}    platformName=${ANDROID_PLATFORM_NAME}    platformVersion=${ANDROID_PLATFORM_VERSION}    appActivity=${ANDROID_APP_ACTIVITY}    appPackage=${ANDROID_APP_PACKAGE}

Teardown
    Run Keyword If Test Failed    Capture Page Screenshot
    Close All Applications

*** Test Cases ***

Verificar que o botao existe
    Element Should Be Visible    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View
*** Settings ***
Library  SeleniumLibrary
Resource  ../testcases/case.robot
Library  SeleniumLibrary
Resource  ../testcases/case.robot
*** Test Cases ***
Open Browser
    open my browser     ${url}  ${browser}
Handling Tabbed windows
    enter wiki text     ${wiki}
    tabbed window       ${title1}   ${title0}
Handle Alert
    handle the alert
Date picker
    date picker
Scrolling
    scroll upto menu
Select menu
    select menu     ${speed_ind}    ${file_value}   ${number_value}     ${product_value}    ${animal_value}
Enter details in textboxes
    enter signup details    ${fname}   ${lname}    ${phno}     ${country}     ${city}     ${emid}
Handling Radiobuttons
    radiobuttons
Selcting from listboxes
    list box        ${listbox_ind}
Mouse Actions
    mouse actions
Dragging Slider
    drag slider
Uploading a file
    upload file
Closing Browser
    close my browser

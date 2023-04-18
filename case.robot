*** Settings ***
Library  SeleniumLibrary
Variables  ../page objects/objects.py
*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${browser}      chrome
${wiki}     bill gates
${title1}     Bill Gates's house - Wikipedia
${title0}   Automation Testing Practice
${fname}    Ram
${lname}    Sagar
${phno}     6281836365
${country}  INDIA
${city}     Hyderabad
${emid}     ramsagar70901@gmail.com
${speed_ind}    2
${file_value}    PDF file
${number_value}  1
${product_value}    Google
${animal_value}     Avatar
${listbox_ind}  3
${slider_x_value}   250
${slider_y_value}   0
${resize_x_value}    100
${resize_y_value}       20
*** Keywords ***
open my browser
    [Arguments]  ${url}     ${browser}
    open browser    ${url}      ${browser}
    maximize browser window
enter wiki text
    [Arguments]  ${wiki}
    input text      ${wiki_txtbox}      ${wiki}
    click element   ${search}
    sleep   3
    click link      ${link}
tabbed window
    [Arguments]  ${title1}      ${title0}
    switch window  ${title1}
    title should be    ${title1}
    scroll element into view    ${scroll_upto}
    close window
    switch window  ${title0}
    title should be     ${title0}
handle the alert
    click element      ${alert}
    handle alert    accept
date picker
    click element   ${date_picker_id}
    FOR   ${i}  IN RANGE    1   7
       click element   ${next_button}
    END
    click element  ${date}
scroll upto menu
    scroll element into view    ${animal}
select menu
    [Arguments]     ${speed_ind}    ${file_value}   ${number_value}     ${product_value}    ${animal_value}
    select from list by index    ${speed}   ${speed_ind}
    select from list by label   ${file}    ${file_value}
    select from list by label   ${number}   ${number_value}
    select from list by label   ${product}  ${product_value}
    select from list by label   ${animal}   ${animal_value}
enter signup details
    [Arguments]  ${fname}   ${lname}    ${phno}     ${country}     ${city}     ${emid}
    title should be     ${title0}
    select frame    ${frame_id}
    input text  ${firstname}    ${fname}
    input text  ${lastname}    ${lname}
    input text  ${phone}    ${phno}
    input text  ${nationality}    ${country}
    input text  ${place}    ${city}
    input text  ${email_id}    ${emid}
    unselect frame
run until sucess
    [Arguments]  ${kw}  ${element}
    wait until keyword succeeds     20  1   ${kw}  ${element}
radiobuttons
    scroll element into view    ${scroll_element_xpath_email}
    select frame    ${frame_id}
    click element     ${male}
    click element   ${monday}
    click element   ${tuesday}
    click element   ${wednesday}
    click element   ${thursday}
    click element   ${friday}
    unselect frame
list box
    [Arguments]     ${listbox_ind}
    select frame    ${frame_id}
    select from list by index    ${best_time_to_contact}   ${listbox_ind}
    unselect frame
mouse actions
    double click element   ${double_click}
    drag and drop       ${drag_me}    ${drop_me}
    #set selenium speed  1seconds
    #drag and drop       ${mr_john}    ${trash}
    #drag and drop       ${mary}         ${trash}
    #click element       ${recycle}
drag slider
    drag and drop by offset     ${slider}    ${slider_x_value}     ${slider_y_value}
    scroll element into view    ${html_table_title}
    sleep   2
    set selenium speed  2seconds
    drag and drop by offset     ${resize}     ${resize_x_value}     ${resize_y_value}
    set selenium speed  0seconds
upload file
    select frame    ${frame_id}
    choose file     ${upload_file_button}    ${path}
    unselect frame
    sleep   5
close my browser
    close browser

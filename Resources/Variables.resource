*** Variables ***
${browser}       gc
${website}       http://dev.www.engage360.evacompute.com:8080/
${Email}                    superUser
${Password}                 SuperAdmin1@
${Community}                SuperUserCombo
${Waterford}                SuperUserCombo-option-30
${Dinning}                  document.getElementById('SideNav_Menu_Dinning').click()
${Add Menu Item}            document.getElementById('dining_new_dining_btn').click()
${dining_title}             id=add_dining_title
${dining_description}       id=add_dining_description
${image}                    name=image_url
${Search}                   id=dining_search_icon
${DONE}                     id=done_btn
${tags}                     id=add_dining_tags
${MessageAlertError}        id=alert_AddEditDinning_MaxTags_Error
${Hide_Print}               id=dining_hideOnPrinting_switch
${Breakfast}                id=icon_6155b016d8ca9945efb2e722
${Lunch}                    id=icon_6155b016d8ca9945efb2e723
${Dinner}                   id=icon_6155b016d8ca9945efb2e724
${Dining Locations}         //span[contains(text(),'Dining Locations')]
${Add Dining Location}      id=add_dining_location_btn
${LocationName}             id=Dining_location_name
${SaveBtn}                  id=Categories_save_btn
${Message_Accept}           id=alert_AddDining_Success
${Yes, Delete}              id=cancel_repair_cancel_btn
${Icon, Delete}             document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root')[8].click()
${DeleteCaBtn}              id=Categories_delete_btn
${Icon, Cancel}             id=Categories_cancel_btn
${No, Exit}                 id=cancel_repair_return_btn
${Dinning_Room}             //div[contains(text(),'Dinning Room')]
${Garden}                   id=location_checkbox_633c93aa9cee2472d133e341
${Living Room}              id=location_checkbox_633c93449cee2472d133e323
${Liric Cafe}               id=location_checkbox_633c935b9cee2472d133e327
${Terrace}                  id=location_checkbox_633c93ba9cee2472d133e344
${Calendar_Btn}             id=Calendar_Btn_StartDate_add_dining_start_date
${Start-Date}               id=add_dining_start_date
${advance_month}            id=calendarHeader_rightArrow
${return_month}             id=calendarHeader_leftArrow
${Nov19}                   document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root MuiPickersDay-day')[20].click()
${BtnSave}                  id=add_dining_save_btn
${DateMeal}                 //div[contains(text(),'fruits')]

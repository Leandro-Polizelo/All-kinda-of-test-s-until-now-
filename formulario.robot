***Settings***
Library         SeleniumLibrary


***Variables***
${input_name}       id:RESULT_TextField-1
${input_lastname}   id:RESULT_TextField-2
${input_phone}      id:RESULT_TextField-3
${input_country}    id:RESULT_TextField-4
${input_city}       id:RESULT_TextField-5
${input_email}      id:RESULT_TextField-6
${send_button}      id:FSsubmit
${gender_button}    RESULT_RadioButton-7
${base_url}          https://fs2.formsite.com/meherpavan/form2/index.html?1537702596407
${Upload_button}     //input[@class="file_upload"]



***Keywords***
acessar o site
   Open Browser   ${base_url}   chrome
   maximize browser window
preencher campos
   Input Text    ${input_name}       felipe
   Input Text    ${input_lastname}   franco
   Input Text    ${input_phone}      1191234-5678
   Input Text    ${input_country}    brasil
   Input Text    ${input_city}       são paulo
   Input Text    ${input_email}      felipefranco22@gmail.com
   
preencher radio button   
   Radio Button should Not Be Selected       RESULT_RadioButton-7
   Click Element     //label[@for="RESULT_RadioButton-7_0"]
   Radio Button Should Be Set To   RESULT_RadioButton-7        Radio-0


preencher checklist
   Checkbox should Not Be selected       RESULT_CheckBox-8


   Click element     //label[@for="RESULT_CheckBox-8_0"]    
   Click element     //label[@for="RESULT_CheckBox-8_1"]
   Click element     //label[@for="RESULT_CheckBox-8_2"]
   Click element     //label[@for="RESULT_CheckBox-8_3"]
   Click element     //label[@for="RESULT_CheckBox-8_4"]
   Click element     //label[@for="RESULT_CheckBox-8_5"]
   Click element     //label[@for="RESULT_CheckBox-8_6"]

   Click element     //label[@for="RESULT_CheckBox-8_0"]
   Click element     //label[@for="RESULT_CheckBox-8_6"]




preencher dropdown
   Select from list by label     id:RESULT_RadioButton-9    Morning




clicar em enviar
   click button     ${send_button}


fechar navegador
   Close Browser




***Test Cases***
Cenário 1: preencher formulário
   acessar o site
   preencher campos
   preencher radio button
   preencher checklist
   preencher dropdown
   clicar em enviar
   fechar navegador
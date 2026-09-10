*** Variables ***

${LOGIN_URL}    https://account.starasia.tech/?clientId=APP-20251ZXsevfVyd&logout=true
#${FORGOT_URL}   https://account.starasia.tech/forgot-password?token=rQ8mo8OkF0kEJf9tW0dFdX5gybn9x1oL&clientId=APP-20251ZXsevfVyd&logout=true

#account valid
${VALID_EMAIL}  
...   aji.banyu@starasia.tech
${VALID_PASSWORD}  
...    $Qwerty1233456789#

#account invalid
${INVALID_EMAIL}  
...    ajiBanyu@yahoo.com
${INVALID_PASSWORD}  
...    aji123ganteng

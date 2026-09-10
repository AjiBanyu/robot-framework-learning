*** Variables ***

${FORGOT_PASSWORD}          xpath=//a[contains(@href, '/forgot-password')]
${EMAIL_FIELD}              id=emailInput
${NEW_PASSWORD_FIELD}       id=passwordInput
${CONFIRM_PASSWORD_FIELD}   id="confirmPasswordInput"
${CONTINUE_BUTTON}          css:button[type="submit"]
${RESET_PASSWORD_BUTTON}    css:button[type="submit"]
Feature: browser automation 2

  Background:
    * configure driver = { type: 'geckodriver', target: 'null'}
    # * configure driverTarget = { docker: 'ptrthomas/karate-chrome', showDriverLog: true }

  Scenario: google search, land on the karate github page, and search for a file

    Given driver 'http://app-framework-staging.cembrabusiness.ch/'
    And input('//body/div[1]/div[1]/div[1]/div[2]/form/div[1]//input', 'paul.osagiobare+karate10@spotcap.com')
    And click('//body/div[1]/div[1]/div[1]/div[2]/form/div[2]//input[1]')
    And input('//body/div[1]/div[1]/div[1]/div[2]/form/div[2]//input[1]', 'Spotcap123')
    When submit().click('#submit')

    #Prequalification
    And waitFor('#signupForm_companyName').click()
    And input('#signupForm_companyName', 'Farmer')
    And waitFor('#ui-id-1')
    #And select('#ui-id-3', 'Farmer Connect SA')
    * mouse().move('#ui-id-3').click()
    #And click('//*[@id="ui-id-3"]')
    And click('#signupForm_industry')
    And waitFor('#signupForm_industry')
    And input('#signupForm_industry', 'Dienstleistung - andere')
    #* mouse().move('//*[@id="signupForm_industry"]/option[3]').click()
    And click('#signupForm_incdate')
    And input('#signupForm_incdate', '5-8 Jahre')
    #* mouse().move('#signupForm_incdate').click()
    And click('#signupForm_purpose')
    And input('#signupForm_purpose', 'Anschaffung Immobilien')
    #* mouse().move('#signupForm_incdate').click()
    And input('#signupForm-preRevenue', '200000')
    And input('#signupForm_amount', '10000')
    When submit().click('#submit-prequal')


    
    #Basic info
    And click('#signatory_applicant0')
    And select('#app_frmsig_title0')
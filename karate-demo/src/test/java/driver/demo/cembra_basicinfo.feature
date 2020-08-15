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

     #Basic info
    And waitFor('#signatory_applicant0')
    And click('#signatory_applicant0')
    * mouse().move('#ui-id-3', 'Mrs').click()
    #And select('#app_frmsig_title0')id="app_frmsig_phone0"
    And input('#app_frmsig_phone0', '+41 79 123 45 67')
    * scroll('#frmsig_0_birthDate')
    And click('#frmsig_0_birthDate')
    And input('#frmsig_0_birthDate', '10/08/2002')
    #And waitFor('#ui-datepicker-div > table > tbody > tr:nth-child(2) > td:nth-child(5) > a)')
    #* mouse().move('//*[@id="ui-datepicker-div"]/table/tbody/tr[2]/td[2]').click()
    And click('#app_frmsig_idtype0')
    * mouse().move('#app_frmsig_idtype0 > option:nth-child(2)', 'Schweizerischer Fahrausweis').click()
    And waitFor('#signatory_applicant0')
    And click('#app_frmsig_idfile0')
    And waitFor('#app_frmsig_idfile0')
    And input('#app_frmsig_idfile0', 'C:\Users\Paul\Pictures\Screenshots\Screenshot (1).png')
    * submit().click('#file-submit')
    * waitForText('#app_frmsig_idfile0', 'C:\Users\Paul\Pictures\Screenshots\Screenshot (1).png')

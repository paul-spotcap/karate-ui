Feature: browser automation 2
 
  Background:
    * configure driver = { type: 'geckodriver', target: 'null'}
    #* configure driver = {type:'geckodriver', port:4444, executable:'C:/karate/geckodriver-master/geckodriver-master', target:'null'}
    #* karate.configure('driver', { type: 'geckodriver', executable: 'C:/karate/geckodriver-v0.27.0-win64', start: false, port: 4444, addOptions: ['windows-size=320,200'], target:'null'})
    #{ type: 'chromedriver', port: 9515, executable: 'chromedriver' }
    # * configure driverTarget = { docker: 'ptrthomas/karate-chrome', showDriverLog: true }

  Scenario: create a new user.
    Given driver 'http://app-framework-staging.cembrabusiness.ch/'
    And click('/html/body/div[1]/div[1]/div[3]/div/div/a')
    #And click('#email')
    And input('/html/body/div[1]/div/div[2]/div/form/div[2]/div/input', 'paul.osagiobare+karate10@spotcap.com')
    And input('/html/body/div[1]/div/div[2]/div/form/div[3]/div/input', 'Spotcap123')
    And click('/html/body/div[1]/div/div[2]/div/form/div[4]/label')
    And submit().click('/html/body/div[1]/div/div[2]/div/form/div[5]/button')
    #//input[@name='commit']
    #Then  driver 'https://app-framework-staging.cembrabusiness.ch/ch/dashboard'

    And waitFor('#signupForm_companyName').click()
    And input('#signupForm_companyName', 'farmer')
    And mouse().move('//*[@id="ui-id-3"]').click()
    And click('//*[@id="ui-id-3"]')
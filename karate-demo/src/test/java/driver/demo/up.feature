 Feature: browser image

  Background:
   * configure driver = { type: 'geckodriver', target: 'null'}
 Scenario: google search, land on the karate github page, and search for a file



* driver 'http://the-internet.herokuapp.com/upload'
* robot { window: '^Chrome', highlight: true }
# since we have the driver active, the "robot" namespace is needed
* robot.waitFor('choose-file.png').click().delay(1000)
* robot.input(read: "Screenshot.png" 'C:\Users\Paul\Pictures\Screenshots\Screenshot(1).png' + Key.ENTER)
* robot.waitFor('file-name.png').click()
* robot.input(Key.ENTER).delay(1000)
* submit().click('#file-submit')
* waitForText('#uploaded-files', 'Screenshot.png')
* screenshot()
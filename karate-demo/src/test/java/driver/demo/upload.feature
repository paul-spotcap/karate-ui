Feature: browser image

  Background:
   * configure driver = { type: 'geckodriver', target: 'null'}
 Scenario: google search, land on the karate github page, and search for a file

* url 'http://the-internet.herokuapp.com/upload'
* multipart file file = { read: 'Screenshot.png', filename: 'C:/Users/Paul/Pictures/Screenshots/Screenshot.png', contentType: 'image/png' }
* method pos

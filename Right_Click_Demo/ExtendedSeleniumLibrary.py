from robot.libraries.BuiltIn import BuiltIn
from selenium import webdriver
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.keys import Keys

def Right_Click_Element(xpath):
    webdriver = BuiltIn().get_library_instance('SeleniumLibrary').driver
    actionChains = ActionChains(webdriver)
    actionChains.context_click(webdriver.find_element_by_xpath(str(xpath))).perform()
    actionChains.send_keys(Keys.ARROW_DOWN).send_keys(Keys.ENTER).perform()
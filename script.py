from selenium import webdriver


options = webdriver.ChromeOptions()
options.binary_location = '/usr/bin/google-chrome-stable'
options.add_argument('headless')
options.add_argument('window-size=1200x600')

driver = webdriver.Chrome(
    executable_path="./drivers/chromedriver", chrome_options=options)
driver.get("http://grishaev.me/")
print(driver.find_element_by_id('home-link').text)

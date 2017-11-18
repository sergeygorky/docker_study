`docker run --rm selscript`

```
Traceback (most recent call last):
  File "./script.py", line 10, in <module>
    executable_path="./drivers/chromedriver", chrome_options=options)
  File "/usr/local/lib/python3.6/site-packages/selenium/webdriver/chrome/webdriver.py", line 69, in __init__
    desired_capabilities=desired_capabilities)
  File "/usr/local/lib/python3.6/site-packages/selenium/webdriver/remote/webdriver.py", line 151, in __init__
    self.start_session(desired_capabilities, browser_profile)
  File "/usr/local/lib/python3.6/site-packages/selenium/webdriver/remote/webdriver.py", line 240, in start_session
    response = self.execute(Command.NEW_SESSION, parameters)
  File "/usr/local/lib/python3.6/site-packages/selenium/webdriver/remote/webdriver.py", line 308, in execute
    self.error_handler.check_response(response)
  File "/usr/local/lib/python3.6/site-packages/selenium/webdriver/remote/errorhandler.py", line 194, in check_response
    raise exception_class(message, screen, stacktrace)
selenium.common.exceptions.WebDriverException: Message: unknown error: Chrome failed to start: exited abnormally
  (Driver info: chromedriver=2.33.506092 (733a02544d189eeb751fe0d7ddca79a0ee28cce4),platform=Linux 4.10.0-38-generic x86_64)
```
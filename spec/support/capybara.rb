Capybara::Screenshot.prune_strategy = :keep_last_run
Capybara.default_wait_time = 2

# Selenium Driver using firefox
Capybara.register_driver :selenium

# Poltergeist (Phantom JS headless driver):
# Capybara.register_driver :poltergeist do |app|
#   Capybara::Poltergeist::Driver.new(app, window_size: [1024, 768], js_errors: false)
# end
# Capybara.javascript_driver = :poltergeist

# Selenium Driver using chrome (requires download of chrome driver):
# Capybara.register_driver :chrome do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :chrome, desired_capabilities: { "chromeOptions" => { "args" => %w{ window-size=1024,768 } } })
# end
# Capybara::Screenshot.register_driver(:chrome) do |driver, path|
#   driver.browser.save_screenshot(path)
# end
# Capybara.javascript_driver = :chrome

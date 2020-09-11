require "base64"

Before do
  page.current_window.resize_to(1440, 900)
end

Before("@bread_bakery") do
  visit "restaurants/bread-bakery/menu"
end

Before("@green_food") do
  visit "restaurants/green-food/menu"
end

After do
  shot_file = page.save_screenshot("log/screenshot.png")
  shot_b64 = Base64.encode64(File.open(shot_file, "rb").read)
  attach(shot_b64, "image/png")
end
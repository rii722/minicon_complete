require 'mechanize'

agent = Mechanize.new
page = agent.get("https://74efab2a2ecb4dddb2102770a808e0fb.vfs.cloud9.us-east-2.amazonaws.com/")
elements = page.search(p)
puts elements
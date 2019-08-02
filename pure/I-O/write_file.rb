File.open("purplecanyon.txt", "w") do | file |

  file.puts "I'm creating this from Ruby yo"
  file.write "No line break here!"
  file.puts "Pretty rad!"
end
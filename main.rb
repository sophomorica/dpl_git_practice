# this code helps to access a directory in a user friendly way
# bundle init will create a gem file
require "colorize"
def puts_git(cmd)
  puts `git #{cmd} -h`
end




def menu
  puts "MAIN MENU".colorize(:blue)
  puts "1: Enter git command".colorize(:yellow)
  puts "2: Exit".colorize(:yellow)
  choice = gets.to_i
  print `clear`
  case choice
    when 1
    puts "Enter git command".colorize(:green)
    puts_git(gets.strip)
    menu
    when 2
      
    puts "Peace!".colorize(:green)
    sleep 1
    print `clear`
    exit

    else 
    puts "Invalid input".colorize(:red)
    sleep 1
    print `clear`
    menu
  
  end
end

menu
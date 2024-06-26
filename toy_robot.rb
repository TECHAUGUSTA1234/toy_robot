require_relative './lib/action'
require_relative './lib/table'
require_relative './lib/robot'
require_relative './lib/handle_input'

command = HandleInput.new(Robot.new, Table.new, Action.new)

$stdout.print "Options: PLACE X,Y,F; MOVE; LEFT; RIGHT; REPORT; EXIT\n"

# Reading user input
while true
  input = gets.chomp

  next if input.empty?

  unless input == 'EXIT'
    command.interpret(input)
    next
  end

  $stdout.print "Goodbye!\n"
  break
end

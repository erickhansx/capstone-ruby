require_relative './app'
require_relative './src/modules/select_options'

class Main
  app = App.new
  exit = 1
  until exit.zero?
    app.interface
    option = gets.chomp.to_i
    exit = option
    select_options(option, app)
  end
  app.write_files
end

Main.new

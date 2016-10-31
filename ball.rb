require 'yaml'
# I'm pretty sure I'm a top-level class documentation comment
class Ball
  ANSWERS = YAML.load_file('answers.yml')

  def shake
    colours = %w(31 32 33 34)
    index = rand(ANSWERS.size)
    answer = ANSWERS[index]
    puts "\e[#{colours[index / 5]}m#{answer}\e[0m"
    answer
  end
end

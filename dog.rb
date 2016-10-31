class Dog
  attr_accessor :name, :health, :hunger, :asleep, :play, :defend

  def initialize(name)
    @name = name
    @health = 10
    @hunger = 10
    @asleep = 10
    @play = 10
    @defend = false
    puts @name + ' родился.'
  end

  def help
    puts "Собаку можно покормить - dog.feed
          С ней можно поиграть - dog.game
          Уложить спать - dog.go_to_sleep
          Привести в порядок - dog.clean
          Она может защитить - dog.someone_strange"
  end

  def feed
    puts 'Нужно покормить ' + @name
    @hunger = 10
    @health += 2
    passageOfTime
  end

  def game
    puts 'Давай поиграем с ' + @name
    @play = 10
    @hunger -=2
    passageOfTime
  end

  def go_to_sleep
    puts @name.to_s + ' ложиться спать'
    @hunger -= 2
    @health += 3
    @asleep = 10
  end

  def someone_strange
    puts @name + ' начинает рычать и лаять'
    @defend = true
    @hunger -= 1
    @asleep -= 1
    if @hunger <= 5 && @asleep <= 5
      @health -= 2
    end
    passageOfTime
  end

  def clean
    puts "Нужно привести " + @name + " в порядок"
    @health += 3
    @hunger -= 1
  end

  def life_status
    puts "Имя собаки " + @name.to_s
    puts "Здоровье " + @health.to_s
    puts "Сытость " + @hunger.to_s
    puts "Сонливость " + @asleep.to_s
    puts "Развеченность " + @play.to_s
    puts "Поблизости есть чужой? " + @defend.to_s
  end

  private

  def passageOfTime
    @hunger -= 1
    @asleep -= 3
    @health -= 1
    if @hunger < 2 && @health < 2
      puts @name + " сбегает с дома, потому что вы плохо с ним обращались("
      exit
    end
  end
end

pet = Dog.new 'Sirko'
pet.help
pet.feed
pet.game
pet.go_to_sleep
pet.someone_strange
pet.clean
pet.life_status

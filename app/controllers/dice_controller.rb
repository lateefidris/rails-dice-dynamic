class DiceController < ApplicationController
  def home
    render({:template => "templates/home"})
  end

  def twodsix
    @first_die = rand(1..6)
    @second_die = rand(1..6)
    render({:template => "templates/2d6"})
  end

  def twodten
    @first_die = rand(1..10)
    @second_die = rand(1..10)
    render({:template => "templates/2d10"})
  end

  def onedtwenty
    @first_die = rand(1..20)
    
    render({:template => "templates/1d20"})
  end

  def fivedfour
    @first_die = rand(1..4)
    @second_die = rand(1..4)
    @third_die = rand(1..4)
    @fourth_die = rand(1..4)
    @fifth_die = rand(1..4)
    render({:template => "templates/5d4"})

  end  

  def random
    @dice = params.fetch("param1").to_i
    @sides = params.fetch("param2").to_i
 
    render({:template => "templates/random"})
  end
end

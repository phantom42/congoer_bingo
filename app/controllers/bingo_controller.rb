class BingoController < ApplicationController
  before_filter :load_congoers
  def index
    
  end
  private
  def load_congoers
    @all_congoers = Congoer.all.to_a
    @random_congoers = []
    for i in 1..25
      if i == 13 
        @random_congoers << 'Free'
      else 
        congoer_index = rand(@all_congoers.length)
        congoer = @all_congoers[congoer_index]
        @random_congoers << congoer.description
        @all_congoers.delete_at(congoer_index)
      end
    end
  end
end

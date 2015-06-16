class BingoController < ApplicationController
  before_filter :load_congoers
  def index
    
  end
  def new
    generate_random_card
    redirect_to root_url
  end
  private
  def load_congoers
    @all_congoers = Congoer.all.to_a
    if session[:congoers].nil?
      if !@all_congoers.empty?
        generate_random_card
      end
    else
      @random_congoers = session[:congoers]
    end
  end
  def generate_random_card
    @random_congoers = []
    for i in 1..25
      if i == 13 
        @random_congoers << 'Free'
      else 
        congoer_index = rand(@all_congoers.length)
        puts congoer_index
        congoer = @all_congoers[congoer_index]
        @random_congoers << congoer.description
        @all_congoers.delete_at(congoer_index)
      end
    end
    session[:congoers] = @random_congoers
  end
end

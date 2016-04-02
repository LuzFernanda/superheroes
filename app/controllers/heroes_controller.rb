class HeroesController < ApplicationController
def  index
  @heroes = Heroe.all
  @heroes.all.each do |heroe|
    puts heroe.attributes
    puts heroe.name
  end
  end

def create
  @heroe = Heroe.new heroe_params
  if @heroe.save
    redirect_to heroes_path, notice: 'Heroe registrado con exito'
  else
    render :new
  end
end

def new 
	render json: params
end

private
def heroe_params
    params.require(:heroe).permit(:name, :email)
end
end

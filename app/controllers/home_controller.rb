class HomeController < ApplicationController
  def index
    @hash = GetValues.new.get_the_crypto('https://coinmarketcap.com')
  end

  def create
    	@hash
    	flash[:success] = "Le prix est : #{user_params[:value]}!"
      redirect_to root_path
    end

    private

    def user_params
    	params.permit(:value)
    end
end

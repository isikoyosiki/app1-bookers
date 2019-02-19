class BookersController < ApplicationController
  def show
  	@bookers = Bookers.find(params[:id])
  end

  def index
  	@bookerss = Bookers.all
  end

  def new
  	@bookerss = Bookers.new
  end

  def edit
        @post = Bookers.find(params[:id])
  end

  def create
         bookers = Bookers.new(post_params)
         bookers.save
         redirect_to bookers_path(bookers.id)
  end

  def update
        bookers = Bookers.find(params[:id])
        bookers.update(bookers_params)
        redirect_to bookers_path(bookers.id)
  end

   def destroy
        bookers = Bookers.find(params[:id])
        bookers.destroy
        redirect_to bookers_path
   end

   def back
  	@bookers = Bookers.find(params[:id])
   end

     private

    def bookers_params
        params.require(:post).permit(:title, :body)
    end
end

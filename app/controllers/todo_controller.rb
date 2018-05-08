class TodoController < ApplicationController 
    def index
    @bikes = Bike.all
    
    end

    def show
    @bike = Bike.find_by_id(params[:id])  
    end
    
    def new
    end
    def create
    t = Bike.new
    t.title = params['title']
    t.image = params['image']
    t.price = params['price']
    t.description = params['description']
    t.save
    redirect_to "/todo/show/#{ t.id }"
    end
    def edit
    @bike = Bike.find_by_id(params[:id])
    end
    def update
    t = Bike.find_by_id(params[:id])
    t.title = params['title']
    t.image = params['image']
    t.price = params['price']
    t.description = params['description']
    t.save
    redirect_to "/todo/show/#{t.id}"
    end
    def destroy
    t = Bike.find_by_id(params[:id])
    t.destroy
    redirect_to "/."
    end




end
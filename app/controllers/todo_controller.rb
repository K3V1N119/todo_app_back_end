class TodoController < ApplicationController 
    def index
    end
    def show
        @todo_description = "Learn Variables"
        @todo_pomodoro_estimate = 4
    end

end
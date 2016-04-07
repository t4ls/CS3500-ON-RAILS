class ComputersController < ApplicationController
    def create 
       @computer = Computer.new(computer_params)
       @computer.user_id = current_user.id
       @computer.save
    end

    def show 
        @computer = Computer.find(params[:id])
    end
end

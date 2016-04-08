class ComputersController < ApplicationController
    def index
		@computers = Computer.all		
	end

	def show 
		
	end

	def new 
		@computer = Computer.new		
	end
	
	def create 
		@computer = Computer.new(computer_params)
		@computer.user_id = current_user.id
       	
		if @computer.save
			redirect_to action: 'index'
		else 
			redirect_to action: 'new'
		end 
		
    end

	private 
	def computer_params
		params.require(:computer).permit(:make, :ram)
	end
	
	
end

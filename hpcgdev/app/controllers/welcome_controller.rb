class WelcomeController < ApplicationController

    def index
        @test="blarg"
    end

    private
    def test_params
        params.requires(:computer).permit(:make, :model)
    end




end

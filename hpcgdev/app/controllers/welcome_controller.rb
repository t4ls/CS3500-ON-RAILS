class WelcomeController < ApplicationController

    def index
        @test="blarg"
    end

    def create
        @hotdog=index_params

        redirect_to action: 'index', perro: @hotdog
    end

    private
    def test_params
        params.permit(:hotdog)
    end




end

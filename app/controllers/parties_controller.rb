class PartiesController < ApplicationController
    def index
        @parties = Party.all
    end

    def new
        @party = Party.new(name: 'Halloween')
    end

    def create
        byebug
    end

    def show
        @party = Party.find(params[:id])
    end
end

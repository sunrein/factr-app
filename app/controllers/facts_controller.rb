class FactsController < ApplicationController

    def index
      @facts = Fact.all.order('created_at DESC')
    end

    def new
      @fact = Fact.new
    end

    def create
      @fact = Fact.new(fact_params)
      @fact.user = current_user
      @fact.save

      redirect_to @fact
    end

    def show
      @fact = Fact.find(params[:id])
    end

    def edit
      @fact = Fact.find(params[:id])
    end

    def update
      @fact = Fact.find(params[:id])

      if @fact.update(fact_params)
        redirect_to @fact

      else
        render 'edit'
      end
    end

    private

      def fact_params
        params.require(:fact).permit(:body)
      end
  end

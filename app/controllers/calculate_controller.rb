class CalculateController < ApplicationController

	def index
		@calculate = Calculate.new
	end

	def calculate
		@calculate = Calculate.new(calculate_params)
		@calculate.calculate
		render 'index'
	end

private
	# Never trust parameters from the scary internet, only allow the white list through.
	def calculate_params
		params.require(:calculate).permit(:repited_str, :needed_str)
	end

end

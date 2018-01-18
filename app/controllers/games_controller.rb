class GamesController < ApplicationController
  def name_query_method
    input = params["my_name"].upcase
    input_check = input.split("")
    if input_check[0] == "A"
      render json: ["Hey, your name starts with the first letter of the alphabet!"]
    else
      render json: {your_name: input}
    end  
  end

  def number_guessing_method
    # correct = rand(1..100)
    correct = 36
    input = params["guess"].to_i
    if input == correct
      render json: ["You got it right!"]
    elsif input > correct
      render json: ["Try a little lower..."]
    elsif input < correct
      render json: ["Try a little higher..."]
    end
    
  end

  def guessing_numbers_method
    correct = 36
    input = params[:guess].to_i
    if input == correct
      render json: ["You got it right!"]
    elsif input > correct
      render json: ["Try a little lower..."]
    elsif input < correct
      render json: ["Try a little higher..."]
    end
  end

  def companies_method
    input_1 = params("sony")
    # input_2 = params(:nintendo)
    # inputs_3 = params(:microsoft)
    render json: [input_1]
  end

end

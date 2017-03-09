class ParamsExamplesController < ApplicationController
  def query_params_method
    @my_message = params["message"]
    @my_other_message = params["another_message"]
    render "query_params.html.erb"
  end

  def url_segment_params_method
    @value = params["this_is_a_variable"]
    render "url_segment_params.html.erb"
  end

  def name_method
    @name = params["query_name"].upcase
    if @name.start_with?("A")
      @name_message = "Hey your name starts with A!"
    else
      @name_message = ""
    end
    render "name.html.erb"
  end

  def guess_query_method
    @guess = params["the_users_guess"].to_i
    winning_number = 32
    if @guess > winning_number
      @message = "Pick lower!"
    elsif @guess < winning_number
      @message = "Pick higher!"
    else
      @message = "You won!"
    end
    render "guess_query.html.erb"
  end
end

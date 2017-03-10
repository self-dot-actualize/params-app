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

  def form_params_method
    render "form.html.erb"
  end

  def form_result_method
    @value = params["form_message"]
    render "form_result.html.erb"
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

  def guess_url_segment_method
    @guess = params["the_users_guess"].to_i
    winning_number = 32
    if @guess > winning_number
      @message = "Pick lower!"
    elsif @guess < winning_number
      @message = "Pick higher!"
    else
      @message = "You won!"
    end
    render "guess_url_segment.html.erb"
  end

  def guess_form_method
    render "guess_form.html.erb"
  end

  def guess_form_result_method
    @guess = params["form_input_number"].to_i
    winning_number = 32
    if @guess > winning_number
      @message = "Pick lower!"
    elsif @guess < winning_number
      @message = "Pick higher!"
    else
      @message = "You won!"
    end
    render "guess_form_result.html.erb"
  end
end

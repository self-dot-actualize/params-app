class ParamsExamplesController < ApplicationController
  def query_params_method
    @my_message = params["message"]
    @my_other_message = params["another_message"]
    render "query_params.html.erb"
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
end

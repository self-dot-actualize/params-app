class ParamsExamplesController < ApplicationController
  def query_params_method
    @my_message = params["message"]
    @my_other_message = params["another_message"]
    render "query_params.html.erb"
  end
end

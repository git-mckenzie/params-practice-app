class ParamsController < ApplicationController
  def capitalize
    phrase = params["response"].upcase
    render json: phrase.as_json
  end

  def seg_cap
    phrase = params["phrase"].upcase
    render json: { message: "The url segment is #{phrase}" }
  end

  # def body_params
  #   phrase = params["phrase"]
  #   render json: { message: "The body all caps phrase is #{phrase}" }
  # end

  def body_params
    input_value = params["secret_info"]
    render json: { message: "The secret info is #{input_value}" }
  end
end

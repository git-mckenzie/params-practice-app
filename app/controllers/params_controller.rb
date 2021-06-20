class ParamsController < ApplicationController
  def capitalize
    input_phrase = params["response"].upcase
    render json: input_phrase.as_json
  end

  def seg_cap
    input_phrase = params["response"].upcase
    render json: { message: "The url segment is #{input_phrase}" }
  end

  def body_params
    input_phrase = params["response"].upcase
    render json: { message: "The body all caps phrase is '#{input_phrase}'." }
  end
end

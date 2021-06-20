class ParamsController < ApplicationController
  def capitalize
    phrase = params["response"].upcase
    render json: phrase.as_json
  end

  def seg_cap
    phrase = params["response"]
    render json: { message: "The url segment is #{phrase}" }
  end

  # def segment_params
  #   phrase = params["this_is_a_key"]
  #   render json: { message: "The url segment is #{phrase}" }
  # end

end

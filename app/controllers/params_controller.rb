class ParamsController < ApplicationController
  def capitalize
    phrase = params["response"].upcase
    render json: phrase.as_json
  end
end

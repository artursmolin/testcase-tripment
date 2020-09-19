class Api::V1::ProceduresController < ApplicationController
  def index
    procedures = Api::V1::Procedure.search(
      params[:name] ||= "*",
      fields: [{ name: :text_middle, name: :word_start }],
      misspellings: false,
    )
    response = Api::V1::ProcedureSerializer.new(procedures.results).serialized_json
    render json: response
  end
end

class Api::V1::ProceduresController < ApplicationController
  def index
    procedures = Api::V1::Procedure.search(
      params[:name] ||= "*",
      fields: [{ name: :text_middle, name: :word_start }],
      misspellings: false,
    ).results

    # Alternative search
    procedures = if procedures.any?
                   procedures
                 else
                   Api::V1::Procedure.search(
                     params[:name] ||= "*",
                     fields: [{ name: :word_start, name: :text_middle }],
                     misspellings: false,
                   ).results
                 end

    response = Api::V1::ProcedureSerializer.new(procedures).serialized_json
    render json: response
  end
end

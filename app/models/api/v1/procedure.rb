class Api::V1::Procedure < ApplicationRecord
  searchkick word_start: [:name], case_sensitive: false, language: :english

  validate :name
  validate :procedure_type
end

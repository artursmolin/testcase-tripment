class Api::V1::Procedure < ApplicationRecord
  searchkick word_start: [:name], text_middle: [:name], case_sensitive: false, language: :english

  validates :name, presence: true
  validates :procedure_type, presence: true
end

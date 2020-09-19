class Api::V1::Procedure < ApplicationRecord
  searchkick

  validates :name
  validates :procedure_type
end

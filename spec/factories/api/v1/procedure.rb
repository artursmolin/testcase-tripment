FactoryBot.define do
  factory :procedure, class: Api::V1::Procedure do
    name { Faker::Science.scientist }
    procedure_type { Faker::Science.element }
  end
end

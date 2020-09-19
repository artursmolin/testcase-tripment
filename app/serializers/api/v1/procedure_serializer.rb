class Api::V1::ProcedureSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name do |object|
    object[:name]
  end

  attributes :procedure_type do |object|
    object[:procedure_type]
  end
end

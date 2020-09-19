class CreateApiV1Procedures < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_procedures do |t|
      t.string :name, index: true, null: false
      t.string :procedure_type, null: false

      t.timestamps
    end
  end
end

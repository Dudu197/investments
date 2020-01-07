class CreateMeInvestments < ActiveRecord::Migration[5.1]
  def change
    create_table :me_investments do |t|
      t.string :name
      t.text :description
      t.text :obsevation

      t.timestamps
    end
  end
end

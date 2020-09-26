class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :twitter
      t.string :website
      t.string :logo


      t.timestamps
    end
  end
end

class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.string :rTitle
      t.string :rInt
      t.string :rIntCom
      t.string :rTech
      t.string :rTechCom
      t.string :rLang
      t.integer :rCompen
      t.string :rBenef
      t.string :rDivers
      t.string :rMentor
      t.string :rCult
      t.string :rCultCom
      t.integer :rOv
      t.string :rFName
      t.string :rLName
      t.string :rBootcamp
      t.string :rCity
      t.string :rState
      t.string :rLinked


      t.integer :company_id

      t.timestamps
    end
  end
end

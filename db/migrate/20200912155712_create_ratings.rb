class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.string :interview
      t.string :interview_comment
      t.string :tech
      t.string :tech_interview
      t.string :language
      t.integer :compensation
      t.string :benefits
      t.string :diversity
      t.string :mentorship
      t.string :culture
      t.string :culture_comment
      t.integer :overall
      t.string :first_name
      t.string :last_name
      t.string :bootcamp
      t.string :city
      t.string :state


      t.integer :company_id

      t.timestamps
    end
  end
end

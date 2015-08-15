class CreateWorkExperiences < ActiveRecord::Migration
  def change
    create_table :work_experiences do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :job_title
      t.text :description

      t.timestamps null: false
    end
  end
end

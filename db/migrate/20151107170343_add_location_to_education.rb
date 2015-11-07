class AddLocationToEducation < ActiveRecord::Migration
  def change
    add_column :educations, :location, :string
    add_column :educations, :duration, :date
  end
end

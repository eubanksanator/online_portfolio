class ChangeDurationForEducation < ActiveRecord::Migration
  def change
   change_column :educations, :duration, :string
  end
end

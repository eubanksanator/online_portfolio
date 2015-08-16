class AddCurrentJobToWorkExperiences < ActiveRecord::Migration
  def change
    add_column :work_experiences, :current_job, :boolean, :default => false
  end
end

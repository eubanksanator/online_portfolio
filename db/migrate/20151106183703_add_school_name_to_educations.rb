class AddSchoolNameToEducations < ActiveRecord::Migration
   def self.up
      add_column :educations, :school_name, :string
      add_column :educations, :course_program, :string
   end

   def self.down
      remove_column :educations, :school_name, :string
      remove_column :educations, :course_program, :string
   end
end

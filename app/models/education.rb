class Education < ActiveRecord::Base

   def set_icon
      case name
      when "The Starter League"
         "code"
      when "Elgin Community College"
         "book-o"
      when "ACE Fitness"
         "bolt"
      end
   end
end

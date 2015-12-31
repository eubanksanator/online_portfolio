class Education < ActiveRecord::Base

   def set_icon
      case school_name
      when "The Starter League"
         "code"
      when "Elgin Community College"
         "book"
      when "ACE Fitness"
         "bolt"
      end
   end

end

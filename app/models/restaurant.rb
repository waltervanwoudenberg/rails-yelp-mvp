class Restaurant < ActiveRecord::Base
   enum category: {chinese: 0, italian: 1, japanese: 2, french: 3, belgian: 4}
end

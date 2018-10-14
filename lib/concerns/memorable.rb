module Memorable
    module ClassMethods
        def reset_all                # self.reset_all; must change
            self.all.clear
          end
        
          def count                     # self.count; must change 
            self.all.count
          end
    
          module InstanceMethods
            def initialize
                self.class.all << self
            end
        end
        end

end
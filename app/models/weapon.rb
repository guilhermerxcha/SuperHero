class Weapon < ApplicationRecord
    enum name: [:excalibur, :peaceMaker, :mandragora, :knife]
    validates :level, numericality: {greater_than: 0, less_than_or_equal_to: 2999 }
    def title
        "#{self.name} #{self.description} ##{self.level}"
    end
    def current_power 
        (power_base + ((level-1)*power_step))
    end
    
end

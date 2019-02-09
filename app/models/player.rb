class Player < ApplicationRecord
    belongs_to :position

    def position_name
        self.position.name
    end
end

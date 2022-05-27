class Project < ApplicationRecord
    validates :name, :description, :state, presence: true
    enum state: [:propuesta, :en_progreso, :terminado] #0,1,2

    ransacker :state, formatter: proc {|v| states[v]} do |parent|
        parent.table[:state]
    end
    
end

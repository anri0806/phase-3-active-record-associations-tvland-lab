class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        #return array of full names of actors associated with show
        self.actors.map do |r|
            "#{r.first_name} #{r.last_name}"
        end
    end
  
end
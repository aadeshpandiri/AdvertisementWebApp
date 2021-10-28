class Advertisement < ApplicationRecord
    belongs_to:user
    has_many:comments, :dependent => :destroy
    validates :title,presence:true #{ message: "title is mandatory."  }
    #validates :title, :desc :phone, :presence => true
end

<<<<<<< HEAD
class User < ActiveRecord::Base

   has_many :tweets
   has_secure_password

   def slug

     username.downcase.gsub(" ", "-")
   end

   def self.find_by_slug(slug)
     User.all.find{|user| user.slug == slug}

   end
end 
=======
class User < ActiveRecord::Base 

   has_many :tweets
   has_secure_password
   
   def slug 
     name.downcase.gsub(" ", "-")
   end 
   
   def self.find_by_slug(slug)
     User.all.find{|u| u.slug==slug}
   end
end 
>>>>>>> a9d9ee18c034bd09627d977e5ca5125f0563a5cf

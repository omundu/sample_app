require 'faker'

namespace :db do
  
  desc "Fill database with sample data"
  task :populate => :environment do
    
    Rake::Task['db:reset'].invoke
    User.create!(:name                    => "Mtoto Mzuri",
                 :email                   => "example@railstutorial.org",
                 :password                => "foobar",
                 :password_confirmation   => "foobar"
                 )
    #admin.toggle!(:admin)
    
    99.times do |n|
      name  = Faker::Name.name
      email = "mtoto-#{n+1}@nonini.gov"
      password  = "password"
      User.create!(:name                  => name,
                   :email                 => email,
                   :password              => password,
                   :password_confirmation => password
                  )
    end
    
    User.all(:limit => 6).each do |user|
      50.times do
        user.microposts.create!(:content => Faker::Lorem.sentence(5))
      end
    end
    
  end
  
end
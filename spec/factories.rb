#by using the symbol ':user', we get Factory Girl to simulate the User model.

Factory.define :user do |user|
  user.name                     "Edward Elrich"
  user.email                    "Fullmetal@fma.ani"
  user.password                 "shambalala"
  user.password_confirmation    "shambalala"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :micropost do |micropost|
  micropost.content "to pie or not to pie"
  micropost.association :user
end
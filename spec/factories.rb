#by using the symbol ':user', we get Factory Girl to simulate the User model.

Factory.define :user do |user|
  user.name                     "Edward Elrich"
  user.email                    "Fullmetal@fma.ani"
  user.password                 "shambalala"
  user.password_confirmation    "shambalala"
end

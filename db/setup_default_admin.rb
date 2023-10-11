# db/setup_default_admin.rb

# Load the Rails application
require_relative '../config/environment'

# Check if there is already a default admin
if User.where(email: 'pychangeric.com').empty?
  # Create the default admin user
  admin = User.create(
    email: 'pychangeric.com',  # Change this to your admin email
    password: 'eric40665929',       # Change this to your admin password
    password_confirmation: 'eric40665929',
    id_number: '40665929',
    phone_number: '0794457203',
    full_names: 'Eric Mutembei',
    DOB: '16/10/2003',
    location: 'Nairobi'
  )

  # Output success message
  puts 'Default admin user created!'
else
  puts 'Default admin user already exists.'
end

users = [{ 'username' => 'Ahmed', 'password' => 'password1' },
         { 'username' => 'reda', 'password' => 'password2' },
         { 'username' => 'kevin', 'password' => 'password3' },
         { 'username' => 'Anselem', 'password' => 'password4' },
         { 'username' => 'victor', 'password' => 'password5' }]

puts 'Welcome to The authenticator'
25.times { print '-' }
puts
puts 'this app will take input from the user and comparing passwords that are founded in internal database'
puts 'if passwords are correct, you will get back the user object'

def authintication(username, password, list)
  list.each do |user|
    return user if user['username'] == username && user['password'] == password
  end
  'wrong credentials'
end

attempts = 1

while attempts < 4
  puts 'username :'
  usernamet = gets.chomp
  puts 'password :'
  passwordt = gets.chomp
  data = authintication(usernamet, passwordt, users)
  puts data
  puts 'press n to quit or any key to continue :'
  input = gets.chomp.downcase
  break if input == 'n'

  attempts += 1
end
puts "exceeded number of attempts"

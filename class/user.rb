class User
#  attr_reader :first_name, :last_name, :age
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def hello
    return "Hello, #{self.name}"
  end

  def self.create_users(names)
    names.map do |name|
      User.new(name)
    end
  end

end

users = User.create_users(['alice', 'bob', 'lucky'])

users.each do |user|
  puts user.hello
end


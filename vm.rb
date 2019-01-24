# Created by Syed Arslan Tariq
class Computer
  @@users = {}
  def initialize (username, password)
    @username=username
    @password = password
    @files=Hash.new()
    @@users[username]=password
  end
  def create(filename)
    time = Time.now
    @files[filename]=time
    puts="#{filename} created by user #{@username} at #{time}"
  end
  def Computer.get_users
    return @@users
  end
end

my_computer = Computer.new("arslan", "123")

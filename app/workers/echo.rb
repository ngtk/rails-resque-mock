class Echo
  @queue = :default

  def self.perform(text)
    sleep 3
    Mock.create(:word => text)
    path = File.expand_path("log/echo.log", Rails.root)
    File.open(path, 'a') do |f|
      f.puts "Hello #{text}!"
    end
  end
end


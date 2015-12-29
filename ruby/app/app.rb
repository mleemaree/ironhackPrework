class App
	def initialize (title, author, platform, rating)
		@title = title
		@author = author
		@platform = platform
		@rating = rating
	end

	def evaluation
		puts "#{@author} has developed #{@title} for #{@platform} and he has got #{@rating} points"
	end
end

app = App.new "ILoveApples", "Richard Stallman", "iOS", 8 
app.evaluation
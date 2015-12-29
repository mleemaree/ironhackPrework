class App
	def initialize (title, author, platform, rating)
		@title = title
		@author = author
		@platform = platform
		@rating = rating
	end

	def evaluation
		if @rating.between?(0,4)
			rating = "poor"
		elsif @rating.between?(5,6) 
			rating = "good"
		elsif @rating.between?(7,9)
			rating = "very Cool"
		elsif @rating == 10
			rating = "awesome"
		else
			puts "unrated"
		end

		puts "#{@author} has developed #{@title} for #{@platform} and he has made a #{rating} application"
	end

end

app = App.new "ILoveApples", "Richard Stallman", "iOS", 8 
app.evaluation
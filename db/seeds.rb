(1.upto 10).each do |counter|
	Book.create( title: "The book #{counter}", author: "Author book #{counter}")
end

(1.upto 53).each do |counter|
	 Game.create name: "Game #{counter}"
end

 
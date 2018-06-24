class Calculate
	include ActiveModel::Model
	attr_accessor :repited_str, :needed_str, :to_send, :to_receive, :calculated

	def calculate
		self.to_send = []
		self.to_receive = []
	    my_repited = Repited.pluck(:number)
	    my_needed = Needed.pluck(:number)
		self.repited_str.split(",").each do |number|
			self.to_receive << number.to_i if my_needed.include? number.to_i
	    end
		self.needed_str.split(",").each do |number|
			self.to_send << number.to_i if my_repited.include? number.to_i
	    end
	    self.calculated = true
	end

end

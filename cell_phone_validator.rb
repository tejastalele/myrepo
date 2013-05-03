#new
class CellPhoneValidator

	def initialize(string)
		@string = string.gsub(/\D/,"")
	end

	def validate

		if 		( @string.length == 10 )	
			return validate_mobile_number_for_the_pattern('7','8','9','0-6')

		elsif	( @string.length == 11 )
			return validate_mobile_number_for_the_pattern('07','08','09','1-9')
	      
		elsif	( @string.length == 12 )
			return validate_mobile_number_for_the_pattern('917','918','919','0-8')
		   
		elsif ( @string.length == 13 )
			return validate_mobile_number_for_the_pattern('0917|9107','0918|9108','0919|9109','1-8')
		end
			
		false 		
	end

	def validate_mobile_number_for_the_pattern(*pattern)
		(@string.match(/\A#{pattern[0]}|#{pattern[1]}|#{pattern[2]}/) and @string.match(/\A[^#{pattern[3]}]/)) ? true	: false	
	end
	
end

	

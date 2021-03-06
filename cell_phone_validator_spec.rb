require 'rspec'
require './cell_phone_validator.rb'

## CODE EXCERCISE: Cell phone validator.

# It's very commom to see web forms having a validation for cell phone numbers.
# We want you to try to write the best cell phone validation logic that you can think of.

## TO SUBMIT YOUR ANSWER:

# Fork and clone this gist. Use the rspecs below to help write your own implementation. 
# To follow proper convention, write it in a file called 'cell_phone_validator.rb' (Ref line no.3).
# Share your implementation file with Balwant (Github ID: balwantk) as a private Github Gist.
# We'll have an eye on the time it takes for you to finish. The sooner the better, right? :)
# If you have any questions, check if they've already been answered in the comments section of this gist. Else, just leave a comment.

## HINTS:

# 1] Wondering what this 'rspec' thing is? Google "Rspec". Duhh! ;) or try https://www.relishapp.com/rspec/docs/gettingstarted
# 2] Remember to write the code in the spirit of the application. The tests cases (rspecs) are only a subset of the cases that might come in the real world.
# 3] Feel free to google/ask around for help, yet remember that copy-pasting code/logic will be your loss.
# 4] Using a ready-made library found online may work too, but the main point here is to see how you tackle this challenge yourself.
# 5] The code you write must work, be fast to run and beautiful to read.
# 6] For bonus points, upgrade the specs below with cases that may not be covered by the existing specs and send a pull-request.
# 7] If you find that a few cases are unlikely to happen in the real world, reflect on why we have them there anyways.
# 8] Start by running the specs, them make them all pass: 
#   a] Make sure you have Rspec installed by successfully running "gem install rspec" in the terminal.
#   b] Navigate to the directory containing this file and running "rspec ./<this_files_name>.rb --color" in the terminal.
# 9] Have fun! If you enjoy doing this excercise, you'll probably enjoy your career as a programmer. :)

## SPECS FOR YOUR CODE:

# We recommend that you read the below rspec code out aloud.
# Notice how readable it is? Just like plain and simple english. 
# That's how your code should read too. :)

describe CellPhoneValidator do
  
  [
    '+91-9490-888009'  ,
    '+91 94-90-888009' ,
    '(949) 088-8009'   ,
    '(749) 088-8009'   ,
    '084||908|88009'   ,
    '9490888009'       ,
    '94908 88009'      ,
    '9490 888 009'     ,
    '0919490888009'    ,
    '919490888009'     ,
    '9490.88.8009'     ,
    '8490.88.8009'     ,
    '+91-84900-89a600' ,
    '+91-84r900-89%600',
    '09188888800a'		 ,
		'9109975691710'		 ,
		'9108975691710'
    # TODO: Add your own extra cases here.
    
  ].each do |input|
    it "should return TRUE for VALID input:  #{input}" do
      cell_phone_validation_result_of(input).should be_true
    end
  end
  
  [
    '+91-9490-8880090000',
    '+91-9490-89ak0'     ,
    '91949088009'        ,
    '919490&88009'       ,
		'0091655654'				 ,
		'6988632147'				 ,
		'06988631425' 		   ,
    '9105889664999'			 ,
		'9109785a63477'			 ,
    # TODO: Add your own extra cases below. 
  ].each do |input|
    it "should return FALSE for INVALID input: #{input}" do
      cell_phone_validation_result_of(input).should be_false
      cell_phone_validation_result_of(input).should_not be_nil
    end
  end

  before(:each) do
    def cell_phone_validation_result_of(string)
      CellPhoneValidator.new(string).validate
    end
  end
end

#  Copyrighted software. All Rights Reserved. Property of Xipcraft Systems Pvt. Ltd., Pune - India.

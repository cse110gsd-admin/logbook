class User < ActiveRecord::Base
  has_many :events
  has_many :workouts
  has_many :calendars

  ###attr_accessible :name, :email  ## for changing everyone
  
  # regex explained:   http://ruby.railstutorial.org/chapters/modeling-and-viewing-users-one#sec:user_validations
  # /		start of the regex
  # \A	Match the beginning of a string (~~with~~)
  # [\W+\-.]+	 	At least one word character, plus hyphen or dot.
  # @		just an actual at sign
  # [a-z]\d\-.]+	at least one (the "+") letter ("[a-z]"), digit ("\d"), hyphen or dot ("\-.")
  # \.	an actual dot
  # [a-z]+	at least one letter
  # \Z		end of a string
  # /		end of regex
  # /i	case insensitive.

  # OH WHAT?  http://www.rubular.com/
  # Ruby Regular expression editor!?!?
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # validates ":thing, :presence => true"   Tests whether the thing is presence
  # validates ":thing, :length => {  :maximum => 50 }"     Tests if thing is length <50 
  validates :name, 	:presence => true,
		 	:length => { :minimum => 5 },  # Executive decision for minimum 5 
		 	:length => { :maximum => 18 }, # Again arbitrary decision
		 	:uniqueness => true  
		 	#for uniqueness, optional "uniqueness => {:case_sensitive => ture/false } "
  validates :password,	:presence => true,
			:length => { :minimum => 5 } # minimum 5 char password.
							
  validates :email,	:format => { :with => email_regex } #checks that email is in email format

end



#######
### Just FYI the validation for uniqueness is NOT guaranteed to work 100%
### In particular, if 2 users register simultaneously, they will BOTH get
### that username.  Granted, since only 1 (or 2) people are going to be
### using this at any given time, we wont have this problem, but it IS
### possible.  (So if anyone plans on expanding this, make sure to ensure
### user uniqueness at the database level!
#######
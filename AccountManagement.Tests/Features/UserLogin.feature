Feature: User Login To Account

#Background: 
# Given Something Happens

Scenario: User Can Login To Account
	Given i am <username> with password <password> and <email>
	And the following users are already available
		| username         | password  | email
		| Mohamamd manafi  | 1996      | mohammad1996.manafi@gmail.com
		| ali sedighi      | 1995      | ali.sedighi@gmail.com
	When i try to login to my account
	Then i should get message <result>

	Examples:
		| username        | password  | email                         | result        |
		| Mohamamd manafi | 1996      | mohammad1996.manafi@gmail.com | Authenticated |
		| ali sedighi     | 1995      | ali.sedighi@gmail.com         | Authenticated |
		| fatemeh karimi  | 1997      | fatemeh.karimi@gmail.com      | Access Deny   |
		| huma samiee     | 1234      | huma.samiee@gmail.com         | Access Deny   |
		| pouria gholami  | 1997      | pouria.gholami@gmail.com      | Access Deny   |
		| alireza Afra    | 1995      | alireza.Afra@gmail.com        | Access Deny   |
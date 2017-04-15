class Home < SitePrism::Page

set_url "https://demo.suiteondemand.com"

element :username_field,"input[name='user_name']"
element :password_field,"input[name='user_password']"
element :login_botton, '#bigbutton'


def login_in(username,password)
	username_field.set(username)
	password_field.set(password)
	login_botton.click
end

end
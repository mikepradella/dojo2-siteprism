class Main < SitePrism::Page

element :create_field, :xpath, "//*[@id='grouptab_3']"
element :create_task_field, "a[id='moduleTab_6_Tasks']"


def create_task()
	
	create_field.click
	create_task_field.click

end

end
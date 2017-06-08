			
After  do |scenario|

	#fileName = 'print telas de execucao' % rand(1000)
	time= Time.now.strftime("%Y-%m-%d %H%M")
	page.save_screenshot(time + 'print.png')
end

Around do | scenario, block|

	block.call
	sleep 10
	puts ("funcionou corretamente")

end

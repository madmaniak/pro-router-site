extend tag img
	attr width
	attr height

tag sumup

	def render
		var till = Date.new R.param('date')
		till.setDate(till.getDate + R.param('amount'))
		<self>
			<h2> 'Hello Boss'
			"I'm off for {R.param('amount')} days since "
			<strong> R:setters.date R.param('date')
			" till "
			<strong> R:setters.date till
			"."
			if R.param('image'):src
				<h3> "I drew it for you"
				<img src="{R.param('image'):src}" width=300 height=300>
			<br>
			"Cheers!"
			<br>
			"- {R.param('name')}"

tag timedate_date
	def render
		<self>
			<h2> "{L.format R.param('date').getDate}.{L.format R.param('date').getMonth+1}.{R.param('date').getFullYear}"

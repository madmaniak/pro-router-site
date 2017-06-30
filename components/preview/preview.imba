tag preview

	def setup
		@r = R

	def render
		<self> <h3>	JSON.stringify(@r:params).replace(/"/g, ' ')

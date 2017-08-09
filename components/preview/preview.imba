tag preview

	def setup
		@r = R

	def render
		<self> <h3>	L.truncate JSON.stringify(@r:params).replace(/"/g, ' '), length: 90

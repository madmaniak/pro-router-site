tag paraminput < input

	prop key
	prop disable

	def render
		<self type='text' disabled=@disable value=(R.param(@key) || value)>

	def onkeyup e
		R.write @key, value if R.param(@key) != value
		e.halt

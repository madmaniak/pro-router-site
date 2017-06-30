R:setters:amount = do |v| v if v > 1
R:getters:amount = do |v| Number(v) || 1

tag plusminus
	prop value
	prop decorate
	prop incr
	prop decr

	def render
		<self>
			<ul>
				<plusminus_plus.first incr=@incr>
				if @value
					<li> if @decorate then @decorate(@value) else @value
				<plusminus_minus.last decr=@decr>

tag plusminus_plus < li
	prop incr

	def render
		<self.clickable> '+'
	def ontap
		if @incr
		then @incr()
		else R.write amount: R.param('amount') + 1

tag plusminus_minus < li
	prop decr

	def render
		<self.clickable> '-'
	def ontap
		if @decr
		then @decr()
		else R.write amount: R.param('amount') - 1

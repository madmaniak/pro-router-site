tag insert

	def setup
		dom.focus()

	def render
		<self>
			<h2> "HOW DO YOU FEEL ABOUT COFFEESCRIPT?"
			<.tiles>
				<.tile>
					<paraminput key='feeling'>
				<.tile>
					<pre>
						<code.html>
							"<!--framework independent tip-->\n"
							"<input type='text'\n"
							"  value=R.param('feeling')>"
					<h3>
						"Coffeescript"
						" is {R.param('feeling')}" if R.param('feeling')
					<pre>
						<code.coffeescript>
							"# on input keyup\n"
							"if R.param('feeling') != value\n"
							"  R.write 'feeling', value"

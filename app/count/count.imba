tag count

	def render
		<self>
			<.tiles>
				<.tile>
					<plusminus>
					<h2.center> "= { R.param('amount') }"
				<.tile>
					<pre>
						<code.coffeescript>
							"# cast to number\n"
							"# default value is 1\n"
							"R.getters.amount = (v) ->\n"
							"  Number(v) || 1\n\n"
							"# set amount only when\n"
							"# it's more than 1\n"
							"R.setters.amount = (v) ->\n"
							"  v if v > 1\n\n"
							"# on +\n"
							"R.write amount:\n"
							"  R.param('amount') + 1\n\n"
							"# on -\n"
							"R.write amount:\n"
							"  R.param('amount') - 1\n"
				<h1.smaller>
					<ref.green view="date"> "MORE IS MORE THAN LESS"

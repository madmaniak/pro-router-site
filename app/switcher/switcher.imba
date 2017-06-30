tag switcher

	def render
		<self>
			<h2>
				"TRY CODE"
				<strong> " NOW "
				"IN JS CONSOLE"
			<.tiles>
				<.tile>
					<h2>
						<switch.green.demon=R.param('demon') key="demon">
							if R.param('demon')
							then "I DON'T LIKE DEMONS"
							else "WHERE IS MY BUDDY?"
				<.tile>
					<pre>
						<code.coffeescript>
							"# on click\n"
							"R.toggle('demon')"
				<h1.smaller>
					<ref.green view="insert"> "KEEP ON MOVING"

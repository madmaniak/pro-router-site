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
						<switch.green.night=R.param('night') key="night">
							if R.param('night')
							then "HELP! CAN'T SEE"
							else "LIGHT'S OFF!"
				<.tile>
					<pre>
						<code.javascript>
							"// switch on click\n"
							"R.toggle('night')\n"
							"\n"
							"// link on click\n"
							"R.go('/insert')"

				<h1.smaller>
					<ref.green view="insert"> "KEEP ON MOVING"

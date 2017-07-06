tag demo

	def setup
		@r = R

	def render
		<self>
			<.tiles>
				<.tile>
					<h1.smaller>
						"I'M A "
						<ref.green view="switcher">
							"DEMO"
					<h1> "NOW"
				<.tile>
					<h2>
						<ref.green view="switcher">
							"MESS WITH GREEN ELEMENTS"
					<h2>
						<strong>
							"IT'S HOT "
						"REFRESH ME ANYTIME"
					<h2>
						"OR SHARE URL"
					<h2>
						"AND "
						<strong> "WITNESS PERSISTANCE"

tag demo

	def setup
		@r = R

	def render
		<self>
			<.tiles>
				<.tile>
					<h1.smaller>
						"I'M A "
						<switch.green key="demon">
							"DEMO"
							"N" if @r.param('demon')
					<h1> "NOW"
				<.tile>
					<h2>
						<ref.green view="switcher">
							"MESS WITH "
							if @r.param('demon')
							then "ME"
							else "GREEN ELEMENTS"
					<h2>
						<strong>
							"IT'S HOT "
							"IN HERE "if @r.param('demon')
						"REFRESH ME ANYTIME"
					<h2>
						if @r.param('demon')
						then "I COMMAND YOU TO"
						else "OR"
						" SHARE URL"
					<h2>
						"AND "
						<strong> "WITNESS PERSISTANCE"

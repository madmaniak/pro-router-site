tag insert

	def render
		<self>
			<h2> "WHAT'S YOUR NAME?"
			<.tiles>
				<.tile>
					<paraminput key='name' autofocus='autofocus'>
				<.tile>
					<pre>
						<code.html>
							"<!--framework independent tip-->\n"
							"<input type='text'\n"
							"  value=R.param('name')>"
					<pre>
						<code.javascript>
							"// on input keyup\n"
							"if(R.param('name') != value)\n"
							"  R.write('name', value)"
				<h1.smaller>
					<ref.green view="count"> "WELCOME {R.param('name')}" if R.param('name')

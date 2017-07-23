tag docs

	def render
		<self>
			<.tiles>
				<.tile>
					<h2> "INSTALLATION"
					<h3> "CDN"
					<pre>
						<code.html>
							"<script src=\"//unpkg.com/pro-router@4.2.0/pro-router-standalone.min.js\"></script>"
					<h3> "WEBPACK"
					<pre>
						<code.bash>
							"npm install --write pro-router"
					<pre>
						<code.javascript>
							"require('pro-router')"
					<h2> "USAGE"
					<pre><code.javascript> "R.view"
					"Value which you should use to render a proper component in your render method. It's eager calculated after url change."
					<br>
					<br>
					<pre><code.javascript> "R.param('attribute')"
					"Returns a value of a given key. In this case "
					<i> "'attribute'"
					". "
					"Value is calculated lazely by a getter function (if given) and cached until next url change."
					<br>
					<br>
					<pre><code.javascript> "R.getters.attribute = function(v)\{ ... \}"
					"Getters definitions are a good place for type casting and setting default values for empty keys."
					<br>
					<br>
					<pre><code.javascript>
						"R.write('attribute', value)\n"
					"Set new values for given keys. In both cases you can give more attributes. It will use a setter function if defined."
					<br>
					<br>
					<pre><code.javascript> "R.setters.attribute = function(v)\{ ... \}"
					"Setters definitions are for defining nice serialization to string from an Object. Good place for validation too."
					<br>
					<br>
					<pre><code.javascript> "R.toggle('flag')"
					"Set's a key to the oposite boolean state. Can be used with a second argument which will define state of a flag."
					<br>
					<br>
					<pre><code.javascript> "R.go('/docs/night/1')"
					"Change location to given one. This is the only way to set a change in browser history."
				<.tile>
					<h2> "ON STARTUP"
					<h3> "EXAMPLE"
					<pre>
						<code.javascript>
							"R.init(\{\n"
							"  root: 'main-view',\n"
							"  views: ['main-view', 'docs', 'demo'],\n"
							"  render: function()\{ console.log(R.view) \},\n"
							"  helpers: _\n"
							"\})"

					<h3> "DEFAULTS"
					"You don't need to provide all the options. Sometimes"
					<code.javascript> "R.init()"
					"would be enough."
					<br>
					<br>
					<strong> 'root'
					" - this is a name of your main view which will be displayed on empty pathname. By default:"
					<code.javascript> "\"root\""
					<br>
					<br>
					<strong> 'views'
					" - this is a whitelist which defines the names of your views. Every other name will lead to \"not_found\" page. By default:"
					<code.javascript> "window.View || [ this.root ]"
					"Checks window.View object which may be defined automatically by your framework or creates a list which contains only a root view."
					<br>
					<br>
					<strong> 'render'
					" - this is a function defined by you which results in site rerendering. Will be called on url changes. It should be the same function you call in other cases when the state is changed. By default:"
					<code.javascript> "window.render"
					<br>
					<br>
					<strong> 'helpers'
					" - this is an object with helper methods which needs to be injected. It can be lodash or underscore or another compatibile. By default:"
					<code.javascript> "window._"
					"If you don't use any utility library and don't want to, you can define those methods by yourself. Another possibility:"
					<pre>
						<code.javascript>
							"var helpers = \{\n"
							"  compact: require('lodash.compact'),\n"
							"  fromPairs: require('lodash.fromPairs'),\n"
							"  chunk: require('lodash.chunk'),\n"
							"  includes: require('lodash.includes'),\n"
							"  reject: require('lodash.reject'),\n"
							"  toPairs: require('lodash.toPairs'),\n"
							"  flatten: require('lodash.flatten')\n"
							"}"
			<br>
			<h1.smaller> "ADVANCED"
			<strong> "to_path"
			" is a helper which generates a proper location string. Use it with "
			<strong> "go"
			" to create a clever link component."
			<pre><code.javascript>
				"// change view to 'demo' and keep current params\n"
				"R.to_path('demo') // => '{L.truncate R.to_path('demo'), 30}'\n\n"
				"// change view to 'demo' with new params\n"
				"R.to_path('demo', \{ night: 1 \}) // => '{R.to_path('demo', night: 1)}'\n"
			<h3> "LOCAL PARAMS"
			"Attributes with an underscore prefix will not be kept as a current params."
			<br>
			<br>

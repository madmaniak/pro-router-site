tag #app

	def build
		R.init helpers: L, render: L.throttle self:render.bind(self), 17

	def render
		<self>
			<.main>
				<logo>
				<sentence>
				<subscribe>
				<mainmenu>
				<router>

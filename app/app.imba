tag #app

	def build
		R.init helpers: L, render: L.throttle self:render.bind(self), 17

	def render
		<self.night=R.param('night')>
			<.main>
				<logo>
				if R:view == 'root'
				then <sentence>
				else <preview>
				<subscribe>
				<mainmenu>
				<router>

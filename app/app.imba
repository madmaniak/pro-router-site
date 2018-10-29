tag #app

	def build
		R.init helpers: L, render: L.throttle self:render.bind(self), 17

	def render
		document:title = "pro-router.js - {R:view}"
		<self.night=R.param('night')>
			<.main>
				<logo>
				if R:view == 'root'
				then <sentence>
				else <preview>
				<subscribe>
				<mainmenu>
				<router>
				<yt['a50e-29xZos'] start=894 finish=1174>

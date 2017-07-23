require('canvas-png-compression')
CanvasPngCompression.replaceToDataURL

extend tag canvas

	def dpr
		@dpr ||= window:devicePixelRatio || 1

	def width= width
		if width != @width
			dom:width = width * dpr
			css width: width
			@width = width
		self

	def height= height
		if height != @height
			dom:height = height * dpr
			css height: height
			@height = height
		self

R:setters:image = do |v|
	v.toDataURL("image/png", 0.01) if v

R:getters:image = do |v|
	var i = Image.new
	i:src = v if v
	i

tag mycanvas < canvas

	def render
		dom.getContext('2d').clearRect(0, 0, dom:width, dom:height) if !R.param('image'):src
		dom.getContext('2d').drawImage R.param('image'), 0, 0
		<self>

	def ontouchstart t
		t.capture
		t.data = [Path2D.new, Path2D.new]

	def ontouchupdate t
		t.data.forEach do |path,i|
			let x = t.tx + i + i * Math.random * 3
			let y = t.ty + i + i * Math.random * 3
			path.lineTo(x * dpr,y * dpr)
			context('2d').stroke(path)

	def ontouchend
		R.write :image, dom

tag clear_canvas

	def render
		<self><h1.smaller._ref.green> "clear!"

	def ontap
		R.write :image, ''


tag showoff

	def render
		<self>
			<.tiles>
				<.tile>
					<h2> "DRAW SOMETHING NICE FOR YOUR BOSS"
					<mycanvas width=300 height=300>
				<.tile>
					<h3> "Coffeescript"
					<pre>
						<code.coffeescript>
							"R.setters.image = (v) ->\n"
							"  v.toDataURL(\"image/png\") if v\n"
							"\n"
							"R.getters.image = (v) ->\n"
							"  i = new Image()\n"
							"  i.src = v if v\n"
							"  i\n"
					<clear_canvas>
			<h1>
				<ref.green view="sumup"> "FINISH"

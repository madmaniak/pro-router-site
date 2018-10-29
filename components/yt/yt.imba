extend tag iframe
	attr frameborder
	attr allow
	attr allowfullscreen
	attr width

tag yt < iframe
	attr start
	attr finish
	attr height

	def render
		<self width='100%' src="https://www.youtube.com/embed/a50e-29xZos?rel=0&amp;start={start};end={finish}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen=true>

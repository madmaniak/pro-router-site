extend tag code

	def commit
		@h ||= window:hljs.highlightBlock(dom) || 1

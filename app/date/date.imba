L:format = do |n|
	"{if n < 10 then 0 else ''}{n}"

var h =
	today: do Date.new

	change: do |what, n|
		var date = R.param('date')
		date["set{what}"]( date["get{what}"]() + n )
		R.write 'date', date

	incr_day: do h.change "Date", 1
	decr_day: do h.change "Date", -1
	incr_month: do h.change "Month", 1
	decr_month: do h.change "Month", -1
	incr_year: do h.change "FullYear", 1
	decr_year: do h.change "FullYear", -1

	no_time: do |date|
		date.setHours(0,0,0,0)
		date

	valid: do |date|
		( date || R.param('date') ) > h.no_time h.today()


R:setters:date = do |v| "{v.getFullYear}-{L.format(v.getMonth+1)}-{L.format(v.getDate)}" if h.valid(v)
R:getters:date = do |v|
	if v
		var date = Date.new(v)
		return date if h.valid(date)
	h.today

tag date

	def render
		<self>
			<h2> "TAKE DAYS OFF STARTING:"
			<timedate_date>
			<.tiles>
				<plusminus value=R.param('date').getDate decorate=L:format decr=h:decr_day incr=h:incr_day>
				<plusminus value=R.param('date').getMonth+1 decorate=L:format decr=h:decr_month incr=h:incr_month>
				<plusminus value=R.param('date').getFullYear decr=h:decr_year incr=h:incr_year>

			<h3> "Coffeescript"
			<pre>
				<code.coffeescript>
					"# by default build a Date object with current date\n"
					"# if the date is given and valid build a Date object this date\n"
					"R.getters.date = (v) ->\n"
					"  if v\n"
					"    date = new Date(v)\n"
					"    return date if h.valid(date)\n"
					"  h.today()\n"
					"\n"
					"# build a nice string from Date object\n"
					"R.setters.date = (v) ->\n"
					"  if h.valid(v)\n"
					"    \"#\{v.getFullYear()\}-#\{v.getMonth()+1\}-#\{v.getDate()\}\"\n"
					"\n"
					"# helpers\n"
					"h =\n"
					"  today: -> new Date()\n"
					"\n"
					"  change: (what, n) ->\n"
					"    date = R.param('date')\n"
					"    date[\"set#\{what\}\"]( date[\"get#\{what\}\"]() + n )\n"
					"    R.write 'date', date\n"
					"\n"
					"    incr_day:   -> h.change \"Date\", 1\n"
					"    decr_day:   -> h.change \"Date\", -1\n"
					"    incr_month: -> h.change \"Month\", 1\n"
					"    decr_month: -> h.change \"Month\", -1\n"
					"    incr_year:  -> h.change \"FullYear\", 1\n"
					"    decr_year:  -> h.change \"FullYear\", -1\n"
					"\n"
					"    no_time: (date) ->\n"
					"      date.setHours(0,0,0,0)\n"
					"      date\n"
					"\n"
					"    valid: (date) ->\n"
					"      ( date || R.param('date') ) > h.no_time h.today()\n"
			<h1>
				<ref.green view="showoff">
					"YES PLEASE"

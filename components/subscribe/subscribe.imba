extend tag div
	attr aria-hidden

tag subscribe_button

	def render
		<self>
			<._ref.clickable>
				"SUBSCRIBE"
				<br>
				<strong> "FOR MORE PRO TOOLS"

	def ontap
		data.dom.submit

tag subscribe

	def render
		<self>
			<div#mc_embed_signup>
				<form@f#mc-embedded-subscribe-form.validate action="//github.us13.list-manage.com/subscribe/post?u=b473188d4e971dd573ee4c8f9&amp;id=2070a69176" method="post" name="mc-embedded-subscribe-form" target="_blank" novalidate='novalidate'>
					<div#mc_embed_signup_scroll>
						<div.mc-field-group>
							<input#mce-EMAIL.required.email type="email" value="" name="EMAIL" placeholder="Email address">
							<subscribe_button[@f]>
						<div#mce-responses.clear>
							<div#mce-error-response.response style="display:none">
							<div#mce-success-response.response style="display:none">
					<div style="position: absolute; left: -5000px;" aria-hidden="true">
						<input type="text" name="b_b473188d4e971dd573ee4c8f9_2070a69176" tabindex="-1" value="">


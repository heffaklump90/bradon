<!DOCTYPE html>
<html lang="en">
	<head>
		<% base_tag %>
		$MetaTags(true)
		<title>$Title</title>
		<link rel="shortcut icon" href="/favicon.ico" />
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,400italic,700,700italic|Vollkorn:400italic,700italic,400,700' rel='stylesheet' type='text/css'>

		<script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-23110080-1']);
			_gaq.push(['_trackPageview']);

			(function() {
				var ga = document.createElement('script');
				ga.type = 'text/javascript';
				ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(ga, s);
			})();

		</script>

	</head>

	<body>
		<div id="Container">
			<div id="Header" class="typography">
				<div style="float: left">
					<p class="sitename">$SiteConfig.Title</p>
					<p class="tagline">$SiteConfig.Tagline</p>
				</div>
				<img src="/themes/bradon/images/runner.png" />
			</div>

			<div id="Navigation" class="typography">
				<% if $Menu(1) %>
				<div class="level1">
					<ul>
						<% loop $Menu(1) %>
						<li>
							<a href="$Link" title="Go to the $Title page" class="$LinkingMode">$MenuTitle</a>
						</li>
						<% end_loop %>
					</ul>
				</div>
				<% end_if %>
				<% if $Menu(2) %>
				<div class="level2">
					<ul>
						<% loop $Menu(2) %>
						<li>
							<a href="$Link" title="Go to the $Title page" class="$LinkingMode">$MenuTitle</a>
						</li>
						<% end_loop %>
					</ul>
				</div>
				<% end_if %>
			</div>

			<div id="Layout" class="typography">
				$Layout
			</div>

			<div id="Footer" class="typography">
				<% include Footer %>
			</div>
		</div>
	</body>
</html>
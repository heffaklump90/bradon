<!DOCTYPE html>
<html lang="en">
	<head>
		<% base_tag %>
		$MetaTags(true)
		<title>$Title</title>
		<link rel="shortcut icon" href="/favicon.ico" />

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
			<div id="Header">
				<span class="sitename">$SiteConfig.Title</span>
				<p>
					$SiteConfig.Tagline
				</p>
			</div>

			<div id="Navigation">
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

			<div id="Layout">
				$Layout
			</div>

			<div id="Footer">
				<% include Footer %>
			</div>
		</div>
	</body>
</html>
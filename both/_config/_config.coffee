@Config =
	name: 'AutoAce Transport'
	title: 'Reliable. Fast. Safe.'
	subtitle: 'Your transport company'
	logo: ->
		'<b>' + @name + '</b>'
	footer: ->
		 '&copy; ' + new Date().getFullYear() + ' ' + @name
	emails:
		from: 'noreply@' + Meteor.absoluteUrl()
#	blog: 'http://meteorfactory.io'
#	about: 'http://meteorfactory.io'
	username: false
	homeRoute: '/'
	dashboardRoute: '/dashboard'
	socialMedia:
		facebook:
			url: 'http://facebook.com/autoacetransport'
			icon: 'facebook'
		twitter:
			url: 'http://twitter.com/autoacetransport'
			icon: 'twitter'
		google:
			url: 'http://plus.google.com/autoacetransport'
			icon: 'google-plus'
#		github:
#			url: 'http://github.com/yogiben'
#			icon: 'github'
#		info:
#			url: 'http://meteorfactory.io'
#			icon: 'link'
	publicRoutes: ['home']
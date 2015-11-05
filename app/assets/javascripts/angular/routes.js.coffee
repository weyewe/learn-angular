AngulaRails.config ($stateProvider, $urlRouterProvider) ->
	$urlRouterProvider.otherwise("/")

	$stateProvider
		.state('app',
			url: '/'
			templateUrl: "/assets/crew/index.html"
			controller: "CrewMembersController"

	)
AngulaRails.controller "GitHttpController", ($scope, $http) -> 
	
	$scope.search = () -> 

		$scope.repos = []
		$scope.searching = true 
		url  = "https://api.github.com/users/#{$scope.username}/repos"

		$http( { method: "GET", url: url})
			.success ( data ) ->  
				$scope.repos = data 
				$scope.searching = false 

			.error (data,status) -> 
				$scope.searching = false 
				if status == 404
					$scope.errorMessage = "User not found"
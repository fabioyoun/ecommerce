var myApp = angular.module('myApp', ['ngRoute']);

myApp.config(function($routeProvider){
	$routeProvider
		.when('/',{
			templateUrl: '../partials/home.html'
		})
		.when('/login',{
			templateUrl: '../partials/registration.html'
		});
})
myApp.controller('productsController', function($scope, productsFactory){
	$scope.products = [];

	// productsFactory.getProducts(function(product_data){
	// 	$scope.products = product_data
	// })
})

myApp.factory('productsFactory', function($http){
	var factory = {};

	factory.getProducts = function(callback){
		$http({
			method: 'GET',
			url:'/products'
		}).success(function(response){
			callback(response)
		})


		
	}

	return factory
})
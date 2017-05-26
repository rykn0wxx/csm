angular
	.module('mud')
	.controller('MudCtrl', ['$scope', function ($scope) {
		var self = this;
		self.$scope = $scope;

		console.log(self);
	}]);
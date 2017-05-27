(function() {
	'use strict';

	angular.module('mud')
		.controller('MudCtrl', ['$scope', '$window', '$rootScope', '$location', function ($scope, $w, $rs, $loc) {
			var self = this;
			var $j = $w.jQuery;
			self.$scope = $scope;

			var unwatch = $scope.$watch(function () {
				return $j('#ctrlname');
			}, function (oVal, nVal) {
				if (nVal) {
					unwatch();
					if (nVal.val() === 'portals') {
						$j('#mainNav').affix({
							offset: {
								top: 100
							}
						});
					}
				};
			}, true);
		}]);

})();

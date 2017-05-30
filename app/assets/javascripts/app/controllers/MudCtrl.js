(function() {
	'use strict';

	angular.module('mud')
		.controller('MudCtrl', ['$scope', '$timeout', '$window', '$rootScope', '$location', '$mdSidenav',
		function ($scope, $tm, $w, $rs, $loc, mdSB) {
			var self = this;
			var $j = $w.jQuery;
			self.$scope = $scope;
			$scope.runSwitch = {
				locloaded: false,
				pagloaded: false,
			};

			$rs.$on('$locationChangeSuccess', function (angEvent, newUrl, oldUrl, newState, oldState) {
				$scope.runSwitch.locloaded = $loc.absUrl() === newUrl;
			});

			var unPageLoaded = $rs.$watch('$pageFinishedLoading', function (newVal, oldVal) {
				if (newVal !== oldVal && newVal) {
					unPageLoaded();
					$scope.runSwitch.pagloaded = newVal;
				}
			}, true);

			var unwatch = $scope.$watchCollection('runSwitch', function (nVal, oVal) {
				if (nVal.locloaded && nVal.pagloaded) {
					unwatch();
					$tm(function () {
						if ($j('#mainNav')) {

							$j('#mainNav').affix({
								offset: {
									top: 100
								}
							});

							$scope.runSwitch = {
								locloaded: false,
								pagloaded: false,
							};

						}
					}, 100);
				}
			}, true);

			$scope.toggleLeft = buildToggler('left');
			$scope.toggleRight = buildToggler('right');

			function buildToggler(componentId) {
	      return function() {
	        mdSB(componentId).toggle();
	      };
	    }

		}]);
})();

/*
if ($j('form .remove_fields').length > 0) {
	$j('form .remove_fields').on('click', function (ev) {
		$j(this).prev('input[type=hidden]').val('1');
		$j(this).closest('fieldset').hide();
		ev.preventDefault();
	});
}

if ($j('form .add_fields').length > 0) {
	$j('form .add_fields').on('click', function (ev) {
		var time = new Date().getTime();
		var regexp = new RegExp($(this).data('id'), 'g');
		$j(this).before($j(this).data('fields').replace(regexp, time));
		ev.preventDefault();
	});
}
*/

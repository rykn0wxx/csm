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
				};
			}, true);
		}]);

})();

(function () {

	'use strict';

	
	angular
	.module('mud', [
		'ngAnimate',
		'ngAria',
		'ngMessages',
		'ngMaterial',
		'ui.router',
		'templates'
	])
	.config(['$mdThemingProvider', '$sceDelegateProvider', function (mdTheme, scDel) {
		mdTheme.theme('default')
			.primaryPalette('indigo')
			.accentPalette('teal')
			.warnPalette('deep-orange')
			.dark();

		scDel.resourceUrlWhitelist([
			'self', '**'
		]);
	}]);

})();
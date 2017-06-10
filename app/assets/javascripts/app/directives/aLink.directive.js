(function() {
  'use strict';

  angular.module('mud')
    .directive('a', ['$mdTheming', function (mdThe) {
      return {
        restrict: 'E',
        link: function postLink(scope, element, attrs) {
          mdThe(element);
          element.addClass('_md');
          if (attrs.href === '' || attrs.href === '#') {
      			element.on('click', function(e) {
              console.log(e);
      				e.preventDefault();
      				e.stopPropagation();
      			});
      		}
        }
      };
    }]);

})();

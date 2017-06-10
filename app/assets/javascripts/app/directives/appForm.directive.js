(function() {
  'use strict';

  angular.module('mud')
    .directive('appForm', ['$mdTheming', '$http', function (mdThe, ngRest) {
      return {
        restrict: 'A',
        scope: true,
        require: 'form',
        link: function postLink(scope, element, attrs, formCtrl) {
          mdThe(element);
          element.addClass('_md');
          var el = element.find('input[data-ng-model]');
          el.each(function (idx, elem) {
            var d = angular.element(elem).data();
            var c = d.$ngModelController;
            c.$setViewValue(angular.element(elem).val());
          });
        },
        bindToController: true
      };
    }]);

})();

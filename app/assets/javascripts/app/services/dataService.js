(function() {
/*
  /portals/:id
*/
  'use strict';
  angular.module('mud')
    .service('restResource', ['$http', function (ngRest) {
      function getResource (uriPath) {
        return ngRest.get(uriPath);
      }

      return {
        get: getResource
      };

    }]);


})();

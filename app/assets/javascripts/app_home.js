//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require angular

angular.module('app_home', [])
  .controller('AppHomeCtrl', ['$scope', '$rootScope', '$window', '$timeout', function ($scope, $root, $win, $time) {
    var self = this;
    var $j = $win.jQuery;

    // self.runEars = function () {
    //   $j('form.custom-form').on('focus', '.form-control', function (ev) {
    //     $j(this).closest('.textbox-wrap').addClass('focused');
    //   });
    //   $j('form.custom-form').on('blur', '.form-control', function (ev) {
    //     $j(this).closest('.textbox-wrap').removeClass('focused');
    //   });
    // };
    //
    // $scope.unwatch = $root.$watch(function () {
    //   return $root.$pageFinishedLoading;
    // }, function (nVal) {
    //   if (nVal) {
    //     $scope.unwatch();
    //     $time(function () {
    //       self.runEars();
    //     }, 300);
    //   }
    // }, true);

  }])
  .run(['$timeout', '$rootScope', '$q', '$window', function ($time, $root, $q, $win) {
    var whatToWait = [
      $time(2000)
    ];
    $root.$pageFinishedLoading = false;

    $q.all(whatToWait).then(function () {
      $root.$pageFinishedLoading = true;
    });

    $time(function () {
			if (!$root.$pageFinishedLoading) {
				$root.$pageFinishedLoading = true;
			}
		}, 1);

  }]);

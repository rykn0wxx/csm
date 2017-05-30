(function() {
	'use strict';

	angular.module('mud')
		.controller('HighCtrl', ['$scope', '$timeout', function ($scope, $time) {
			var self = this;
			self.$scope = $scope;

      $scope.chartTypes = [];
      $scope.chartStack = [];

      $scope.newSeries = [
    		{'name': 'SomeName', data:[[1451624400000,162],[1454302800000,88],[1456808400000,41],[1459483200000,153],[1462075200000,93],[1464753600000,51],[1467345600000,193],[1470024000000,183],[1472702400000,36],[1475294400000,194],[1477972800000,40],[1480568400000,56]]}
    	];

      $scope.chartConfig = {
        options: {
          chart: {
            type: 'spline'
          },
          plotOptions: {
            series: {
              stacking: ''
            }
          },
          tooltip: {
            xDateFormat: '%b-%Y',
            pointFormat: '<span style="color:{series.color}">\u25CF</span> {point.x:%b-%Y}: <b>{point.y}</b><br/>'
          },
          xAxis: {
            type: 'datetime'
          }
        },
        series: $scope.newSeries,
        title: {
          text: null
        },
        subTitle: {
          text: 'Using Demo'
        },
        credits: {
          enabled: true
        },
        loading: false,
        size: {}
      };

      $time(function () {
        $scope.$broadcast('highchartsng.reflow');
      }, 300);

      self.getSelectedText = function () {
                console.log('asdas');
        if ($scope.chartConfig.options.chart.type !== undefined) {
          return $scope.chartConfig.options.chart.type;
        } else {
          return 'Please select a chart type!';
        }
      };


		}]);

})();

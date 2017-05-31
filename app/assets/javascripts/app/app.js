'use strict';

angular
	.module('mud', [
		'ngAnimate',
		'ngAria',
		'ngMessages',
		'ngMaterial',
		'ui.router',
		'templates',
		'highcharts-ng',
		'restangular'

	])
	.config(['$mdThemingProvider', '$sceDelegateProvider', 'RestangularProvider', function (mdTheme, scDel, ngRest) {
		mdTheme.theme('default')
			.primaryPalette('indigo')
			.accentPalette('teal')
			.warnPalette('deep-orange')
			.dark();

		scDel.resourceUrlWhitelist([
			'self', '**'
		]);

		ngRest.setBaseUrl('/');

		console.log(ngRest);

	}])
	.run(['$timeout', '$rootScope', '$q', '$window', function ($time, $root, $q, $w) {
		var whatToWait = [
      $time(2000)
    ];
		var Highcharts = $w.Highcharts;
		$root.$pageFinishedLoading = false;

		Highcharts.theme = {
			chart: {
				reflow: false,
				animation: false,
				backgroundColor: {
					linearGradient: { x1: 0, y1: 0, x2: 1, y2: 1 },
					stops: [
						[0, '#313035'],
						[1, '#515054']
					]
				},
				style: {
					fontFamily: 'Roboto',
					fontSize: '12px'
				}
			},
			lang: {
				contextButtonTitle: 'ACA context menu',
				decimalPoint: '.',
				downloadJPEG: 'Export as JPG',
				downloadPDF: 'Export as PDF',
				downloadSVG: 'Export as SVG',
				drillUpText: 'Back to {series.name}',
				loading: 'This will be awesome...',
				months: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
				noData: 'No data to display',
				numericSymbols: ['k', 'M', 'G', 'T', 'P', 'E'],
				printChart: 'Export Chart',
				resetZoom: 'Reset zoom',
				resetZoomTitle: 'Reset zoom level 1:1',
				shortMonths: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
				thousandsSep: ',',
				weekdays: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
			},
			credits: {
				enabled: true,
				href: 'mailto:ariel.andrade@stefanini.com?subject=Stefanini Dashboard Query',
				text: 'Created by ACAndrade',
				style: {
					fontSize: '10px',
					fontFamily: 'Roboto, sans-serif',
					color: 'rgba(255,255,255,0.2)'
				}
			},
			title: {
				style: {
					fontFamily: 'Roboto, sans-serif',
					color: 'rgba(255,255,255,0.8)',
					textTransform: 'uppercase',
					fontSize: '16px',
					fontWeight: 'medium'
				}
			},
			subtitle: {
				style: {
					textTransform: 'uppercase',
					fontSize: '12px',
					fontFamily: 'Roboto, sans-serif',
					fontStyle: 'italic',
					color: 'rgba(255,255,255,0.4)'
				}
			},
			legend: {
				itemStyle: {
					color: 'rgba(255,255,255,0.5)',
					fontWeight: 300
				},
				itemHiddenStyle: {
					color: 'rgba(255,255,255,0.1)'
				},
			},
			plotOptions: {
				bar: {
					borderWidth: 1,
					borderColor: 'rgba(0,0,0,0.1)'
				},
				series: {
					borderWidth: 1,
					borderColor: 'rgba(0,0,0,0.1)',
					groupPadding: 0.01,
					dataLabels: {
						style: {
							backgroundColor: 'rgba(0,0,0,0.4)',
							color: 'rgba(255,255,255,0.7)'
						}
					}
				},
				column: {
					groupPadding: 0.1,
					pointPadding: 0.05,
					borderWidth: 0,
					borderColor: 'rgba(0,0,0,0.1)',
					borderRadius: 1,
					states: {
						hover: {
							enabled: true
						}
					},
					dataLabels: {
						style: {
							backgroundColor: 'rgba(0,0,0,0.4)',
							color: 'rgb(255,0,0)'
						}
					}
				},
				spline: {
					lineWidth: 2,
					marker: {
						lineWidth: 2,
						fillColor: '#fff',
						lineColor: '#484343',
						symbol: 'circle'
					},
					dataLabels: {
						style: {
							color: '#808080',
							fontWeight: 'regular',
							fontSize: '10px',
							fontFamily: 'Roboto, sans-serif',
						}
					}
				},
				line: {
					lineWidth: 1
				}
			},
			tooltip: {
				backgroundColor: 'rgba(0, 0, 0, 0.8)',
				style: {
					fontSize: '11px',
					color: '#F0F0F0'
				}
			},
			yAxis: {
				gridLineColor: 'rgba(0,0,0,0.1)',
				labels: {
					style: {
						color: 'rgba(255,255,255,0.4)'
					}
				},
				lineColor: 'rgba(0,0,0,0.1)',
				lineWidth: 0,
				tickColor: 'rgba(0,0,0,0.4)',
				title: {
					style: {
						color: 'rgba(255,255,255,0.5)'
					},
					text: null
				}
			},
			xAxis: {
				gridLineColor: '#707073',
				labels: {
					style: {
						color: 'rgba(255,255,255,0.4)',
						fontSize: '10px'
					}
				},
				lineColor: 'rgba(0,0,0,0.1)',
				lineWidth: 0,
				tickColor: 'rgba(0,0,0,0.4)',
				title: {
					style: {
						color: 'rgba(255,255,255,0.5)'
					}
				}
			},
			exporting: {
				buttons: {
					contextButton: {
						menuItems: [{
							text: 'Export to PNG (small)',
							onclick: function() {
								this.exportChart({
									width: 250
								});
							}
						}, {
							text: 'Export to PNG (large)',
							onclick: function() {
								this.exportChart();
							},
							separator: false
						}, {
							text: 'Export as SVG',
							onclick: function() {
								this.exportChartLocal({
									type: 'image/svg+xml'
								});
							},
							separator: false
						}]
					}
				}
			},
			//colors: ['#5DA3E7', '#686868', '#75E95D', '#F9953A', '#7077FF', '#F15A60', '#E4D354', '#B8D2EC', '#D98880', '#87CEFA', '#CCCCCC', '#E7B2D4']
			//colors: ['#7cb5ec', '#737373', '#90ed7d', '#faa75b', '#999eff', '#f15a60', '#E4D354', '#B8D2EC', '#D98880', '#87CEFA', '#CCCCCC', '#E7B2D4']
			colors: ['#697079', '#b8babd', '#93979c', '#404e5c', '#dfe0e1', '#b1b4b7', '#E4D354', '#B8D2EC', '#D98880', '#87CEFA', '#CCCCCC', '#E7B2D4']
		};
		Highcharts.setOptions(Highcharts.theme);

		$q.all(whatToWait).then(function () {
			$root.$pageFinishedLoading = true;
		});

		$time(function () {
			if (!$root.$pageFinishedLoading) {
				$root.$pageFinishedLoading = true;
			}
		}, 2000);

	}]);

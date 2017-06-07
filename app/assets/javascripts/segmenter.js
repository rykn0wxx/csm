//= require segments/anime
//= require segments/imgloaded
//= require segments/segmentor

(function() {
  'use strict';

  // var segter = new Segmenter(document.querySelector('.segmenter'), segments(ctrl));

  function segmenterInit (elem, optParm) {
    function segments(opt) {
      var conf = {
        home: {
          pieces: 4,
      		animation: {
      			duration: 1500,
      			easing: 'easeInOutExpo',
      			delay: 100,
      			translateZ: 100
      		},
      		parallax: true,
      		positions: [
      			{top: 0, left: 0, width: 45, height: 45},
      			{top: 55, left: 0, width: 45, height: 45},
      			{top: 0, left: 55, width: 45, height: 45},
      			{top: 55, left: 55, width: 45, height: 45}
      		],
          onReady: function () {
            setTimeout(function () {
              segter.animate();
              opt['headline'].classList.remove('trigger-headline--hidden');
            }, 500);
          }
        },
        default: {
          onReady: function () {
            setTimeout(function () {
              segter.animate();
            }, 600);
          }
        }
      };
      return conf[opt['ctrl']] || conf.default;
    }
    if (elem) {
      var segter = new Segmenter(document.querySelector(elem), segments(optParm));
    }
  }

  var activateSegmenter = function () {
    var headline = document.querySelector('.trigger-headline');
    var kohana = document.getElementsByName('kohana')[0];
    var ctrl = kohana.getAttribute('controller');
    segmenterInit('.segmenter', {ctrl: ctrl, headline: headline});
  };

  if (document.readyState === 'complete' || (document.readyState !== 'loading' && !document.documentElement.doScroll)) {
    activateSegmenter();
  } else {
    document.addEventListener('DOMContentLoaded', activateSegmenter);
  }

})();

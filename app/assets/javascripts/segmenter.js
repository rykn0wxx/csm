//= require segments/anime
//= require segments/imgloaded
//= require segments/segmentor

(function() {
  'use strict';

  var headline = document.querySelector('.trigger-headline');
  var segter = new Segmenter(document.querySelector('.segmenter'), {
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
        headline.classList.remove('trigger-headline--hidden');
      }, 500);
    }
  });

})();

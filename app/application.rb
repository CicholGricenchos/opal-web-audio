require 'opal'
require 'native'
require 'interfaces'

context = WebAudio::AudioContext.new
oscillator = context.create_oscillator

oscillator.type = 'sine'
oscillator.frequency.value = 1000
oscillator.connect(context.destination)
oscillator.start

analyser = context.create_analyser
analyser.fft_size = 1024
length = analyser.frequency_bin_count
data = `new Uint8Array(length)`
oscillator.connect(analyser)

%x{
  var canvasCtx = document.getElementById('canvas').getContext('2d')
  var WIDTH = 800
  var HEIGHT = 600
  var bufferLength = 256
  function draw(data) {
    var dataArray = data;

    canvasCtx.fillStyle = 'rgb(200, 200, 200)';
    canvasCtx.fillRect(0, 0, WIDTH, HEIGHT);

    canvasCtx.lineWidth = 2;
    canvasCtx.strokeStyle = 'rgb(0, 0, 0)';

    canvasCtx.beginPath();

    var sliceWidth = WIDTH * 1.0 / bufferLength;
    var x = 0;

    for(var i = 0; i < bufferLength; i++) {

      var v = dataArray[i] / 128.0;
      var y = v * HEIGHT/2;

      if(i === 0) {
        canvasCtx.moveTo(x, y);
      } else {
        canvasCtx.lineTo(x, y);
      }

      x += sliceWidth;
    }

    canvasCtx.lineTo(canvas.width, canvas.height/2);
    canvasCtx.stroke();
  };
}

log = ->{
  analyser.get_byte_time_domain_data(data)
  `draw(data)`
  `requestAnimationFrame(log)`
}

log.call
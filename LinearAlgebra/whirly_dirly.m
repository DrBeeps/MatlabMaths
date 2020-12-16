x = 0:pi/100:2*pi;
y = sin(x);

noiseAmplitude = 0.1;

noisy_y = y + noiseAmplitude * randn(1, length(y));

plot(x,noise_y)


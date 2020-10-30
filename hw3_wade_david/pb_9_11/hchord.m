function rv = hchord( spec, dur, harm )
  % produce a sampled signal for a chord of duration
  % 'dur' from a specification 'spec', which is a list
  % of notes

  % obtain number of notes in chord
  Cmaj = [0 3; 0 7; 0 10];
  spec = Cmaj;
  dur = 2;
  harm = [0.7 0.05 0.15 0.1];
  [N, width] = size(spec);
  if width ~= 2
    error('malformed input')
  end
  % sample times
  t = (0:8192*dur-1)/8192;
  % initialize signal and accumulate notes into it 
  rv = zeros(1, length(t));
  for n = 1:N
    f = 440 * 2^(spec(n,1) + spec(n,2)/12);
    for i = 1:length(harm)
        rv = rv + harm(i) * sin(2*pi*f*t);
    end
  end
  % scale the signal to within (-1,1)
  rv = rv/N * 0.999;   
  plot(t,rv)
end

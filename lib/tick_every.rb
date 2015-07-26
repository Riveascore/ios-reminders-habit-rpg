module Kernel
  def tick_every sec, &pr
    Thread.new do loop do
      pr.call
      t = Time.now.to_f
      frac = t.modulo(sec.to_f)
      sleep(sec - frac)
    end end
  end
end
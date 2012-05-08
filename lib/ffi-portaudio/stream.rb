class FFI::PortAudio::Stream
  include ::FFI::PortAudio

  def open(input, output, freq, frames=API::FramesPerBufferUnspecified, flags=API::NoFlag, userdata=nil)
    @input, @output, @freq, @frames, @flags, @userdata = input, output, freq, frames, flags, userdata
    @stream = FFI::Buffer.new :pointer
    API.Pa_OpenStream(@stream, @input, @output, @freq, @frames, @flags, @method = method(:process), @userdata)
  end

  def process(input, output, frameCount, timeInfo, statusFlags, userData);end

  def start
    API.Pa_StartStream @stream.read_pointer
  end

  def close
    API.Pa_CloseStream(@stream.read_pointer)
  end
end

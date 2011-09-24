require 'ffi'

module FFI::PortAudio
  VERSION ||= File.read(File.join(File.dirname(__FILE__), '../VERSION')).strip

  require 'ffi-portaudio/enum'
  require 'ffi-portaudio/struct'
  require 'ffi-portaudio/const'
  require 'ffi-portaudio/api'

  autoload :Stream, 'ffi-portaudio/stream'
end

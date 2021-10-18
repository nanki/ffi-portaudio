require_relative 'helper'

class TestFFIPortaudio < Test::Unit::TestCase
  test :it_has_a_version_number do
    assert_kind_of String, ::FFI::PortAudio::VERSION
  end

  test :it_get_portaudio_version_number do
    assert_kind_of String, ::FFI::PortAudio::API.Pa_GetVersionText
  end
end

Pod::Spec.new do |s|
  s.name            = 'MPSPlaceholderTextView'
  s.version         = '1.0.0'
  s.authors         = { 'Matthew Strickland' => 'matthew@idlefusion.com'}
  s.license         = { :type => 'MIT', :file => 'LICENSE' }
  s.platform        = :ios, '6.0'
  s.requires_arc    = true
  s.summary         = 'A Simple UITextView that offers Placeholder text.'
  s.homepage        = 'https://github.com/mps/MPSPlaceholderTextView'
  s.source          = { :git => 'https://github.com/mps/MPSPlaceholderTextView.git', :tag => "v#{s.version}" }
  s.source_files    = 'MPSPlaceholderTextView'
  s.frameworks      = 'UIKit'
end

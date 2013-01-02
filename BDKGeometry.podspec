Pod::Spec.new do |s|
  s.name                  = 'BDKGeometry'
  s.version               = '1.0.0'
  s.summary               = "A set of helper functions I've been using in various XCode projects, abstracted for great good!"
  s.homepage              = 'http://github.com/kreeger/BDKGeometry'
  s.license               = { :type => 'MIT', :file => 'MIT-LICENSE' }
  s.author                = { 'Ben Kreeger' => 'ben@kree.gr' }
  s.source                = { :git => 'https://github.com/kreeger/BDKGeometry.git', :tag => '1.0.0' }
  s.ios.deployment_target = '5.0'
  s.source_files          = '*.{h,m}'
  s.requires_arc          = true
end

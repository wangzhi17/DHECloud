Pod::Spec.new do |s|
  s.name             = 'DHECloud'
  s.version          = '0.1.0'
  s.summary          = 'A short description of DHECloud.'

  s.description      = '大华摄像头iOS的SDK'


  s.homepage         = 'https://github.com/Bilinxian/DHECloud'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ghj' => '1' }
  s.source           = { :git => 'https://github.com/wangzhi17/DHECloud.git', :tag => s.version }

  s.ios.deployment_target = '9.0'
  s.source_files = 'DHECloud/*.{h,m,mm}'
  s.public_header_files = 'DHECloud/*.{h}'
  s.vendored_frameworks ='Depends/framework/*.framework'
  s.framework = 'LCOpenSDKDynamic'
  s.resources = 'Depends/bundle/*'
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'false', 'CLANG_WARN_DOCUMENTATION_COMMENTS' => 'NO',
                            'USER_HEADER_SEARCH_PATHS' => '${PODS_ROOT}/../DHECloud/Depends' }
  s.compiler_flags = '-Wno-incomplete-umbrella'

end

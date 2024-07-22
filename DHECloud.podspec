
Pod::Spec.new do |spec|


  spec.name         = "DHECloud"
  spec.version      = "0.0.1"
  spec.summary      = "大华摄像头SDK"

  spec.description  = <<-DESC
                   在第三方app中集成大华摄像头SDK，在app中实现访问摄像头，直播，对讲，回放等功能。
                   DESC

  spec.homepage     = "https://github.com/wangzhi17/DHECloud"


  spec.license      = "MIT"

  spec.author             = { "wangzhi" => "wangzhi0114@163.com" }

  spec.platform     = :ios, "9.0"

  spec.source       = { :git => "https://github.com/wangzhi17/DHECloud", :tag => "#{spec.version}" }

  s.source_files = 'DHECloud/*.{h,m,mm}'
  s.public_header_files = 'DHECloud/*.{h}'
  s.vendored_frameworks ='Depends/frks/*.framework'
  s.framework = 'LCOpenSDKDynamic'
  s.resources = 'Depends/bundle/*'
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'false', 'CLANG_WARN_DOCUMENTATION_COMMENTS' => 'NO',
                            'USER_HEADER_SEARCH_PATHS' => '${PODS_ROOT}/../DHECloud/Depends' }
  s.compiler_flags = '-Wno-incomplete-umbrella'

end


Pod::Spec.new do |s|
s.name             = 'KGFONTSDK'
s.version          = 'v1.0.0'
s.summary          = 'ONTTEstpod'

s.homepage    = 'https://github.com/gan012784678024/KFEOSTEST'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.authors     = { 'gan012784678024' => 'qingliandaofan@163.com' }
s.source           = { :git => 'https://github.com/gan012784678024/KFEOSTEST.git', :tag => s.version.to_s }
s.ios.deployment_target = '12.2'

s.source_files = 'KGFONTSDK/**/*.{h,m,mm,c}'
s.public_header_files = 'KGFONTSDK/*'

s.dependency 'AFNetworking', '~> 2.6.3'
s.dependency 'MJExtension'
s.dependency 'MTDates'
#s.frameworks = 'neoutils'

s.vendored_frameworks = [
'KGFONTSDK/ONTCore/neoutils.framework',
]

end

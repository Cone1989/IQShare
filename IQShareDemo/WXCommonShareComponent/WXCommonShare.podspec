Pod::Spec.new do |s|
s.name          = "WXCommonShare"
s.version       = "0.0.1"
s.summary       = "WXCommonShare"
s.platform      = :ios,"8.0"
s.description   = <<-DESC
    分享基础组件
DESC
s.homepage      = ""
s.author        = "李强"
s.license       = {
    :type => "MIT",
    :text => <<-LICENSE

LICENSE
}
s.ios.deployment_target = "8.0"
s.source        = { :git => "", :tag => "#{s.version}" }
#s.source_files  = "WXCommonShare/**/*"
s.public_header_files = "WXCommonShare/**/*.h"



s.subspec 'QQ' do |qq|
    qq.source_files = "WXCommonShare/qq/**/*"
end
s.subspec 'Wechat' do |wx|
    wx.source_files = "WXCommonShare/wechat/**/*"
end



s.frameworks    = "SystemConfiguration" , "CoreTelephony"
s.library       = "libc++" , "libz" , "libsqlite3.0"

s.requires_arc  = true
spec.pod_target_xcconfig    = {
    'OTHER_LDFLAGS' => '-ObjC'
}

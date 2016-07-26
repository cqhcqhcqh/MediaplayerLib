#
# Be sure to run `pod lib lint VMMediaPlayerLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'VMMediaPlayerLib'
s.version          = '0.1.0'
s.summary          = 'A short description of VMMediaPlayerLib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
TODO: Add long description of the pod here.
DESC

s.homepage         = 'https://github.com/<GITHUB_USERNAME>/VMMediaPlayerLib'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Chengqihan' => 'chengqh@vmovier.com' }
s.source           = { :git => 'https://github.com/<GITHUB_USERNAME>/VMMediaPlayerLib.git', :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '7.0'
s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-read_only_relocs suppress' }
#s.source_files = 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/*'
#s.exclude_files = 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/ijksdl_aout_ios_audiounit.m', 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/ijksdl_vout_ios_gles2.m', 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/ijkplayer_ios.m'
 s.requires_arc = false
 s.requires_arc = 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/*'
#s.ios.library = 'z'
# s.resource_bundles = {
#   'VMMediaPlayerLib' => ['VMMediaPlayerLib/Assets/*.png']
# }

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'

    s.vendored_libraries = 'VMMediaPlayerLib/Classes/IJKMediaPlayer/ffmpeg/*.a'
    s.source_files = 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/*', 'VMMediaPlayerLib/Classes/ijk_mrc/**/*'

    s.libraries = 'z', 'avcodec', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale'
    s.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '"/Users/chengqihan/Desktop/VMMediaPlayerLib/VMMediaPlayerLib/Classes/ffmpegBuild/universal/include/**" "/Users/chengqihan/Desktop/VMMediaPlayerLib/VMMediaPlayerLib/Classes/IJKMediaPlayer/ijkmedia/**" "/Users/chengqihan/Desktop/VMMediaPlayerLib/VMMediaPlayerLib/Classes/sourceijkmedia/**"' }


#ijkplayer.exclude_files = 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/ijksdl_aout_ios_audiounit.m', 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/ijksdl_vout_ios_gles2.m', 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/ijkplayer_ios.m'


    #ijkplayer.xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/../../VMMediaPlayerLib/Classes/sourceijkmedia/**" "${PODS_ROOT}/../../VMMediaPlayerLib/Classes/IJKMediaPlayer/ijkmedia/**" "${PODS_ROOT}/../../VMMediaPlayerLib/Classes/ffmpegBuild/universal/include/**"' }

end

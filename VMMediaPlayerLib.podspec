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

#s.source_files = 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/*'
#s.exclude_files = 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/ijksdl_aout_ios_audiounit.m', 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/ijksdl_vout_ios_gles2.m', 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/ijkplayer_ios.m'
s.requires_arc = true
#s.ios.library = 'z'
# s.resource_bundles = {
#   'VMMediaPlayerLib' => ['VMMediaPlayerLib/Assets/*.png']
# }

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'

    s.subspec 'Ijkplayer' do |ijkplayer|
    #ijkplayer.preserve_paths = 'VMOpensslLowPodV/Classes/libraries/openssl-1.0.1e/include/openssl/*.h', 'VMOpensslLowPodV/Classes/libraries/openssl-1.0.1e/include/LICENSE'
    ijkplayer.vendored_libraries = 'VMMediaPlayerLib/Classes/IJKMediaPlayer/ffmpeg/*.a'
    ijkplayer.source_files = 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/*'
    ijkplayer.exclude_files = 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/ijksdl_aout_ios_audiounit.m', 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/ijksdl_vout_ios_gles2.m', 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/ijkplayer_ios.m'
    ijkplayer.libraries = 'z', 'avcodec', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale'
    ijkplayer.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '"/Users/chengqihan/Desktop/VMMediaPlayerLib/VMMediaPlayerLib/Classes/ffmpegBuild/universal/include/**" "/Users/chengqihan/Desktop/VMMediaPlayerLib/VMMediaPlayerLib/Classes/IJKMediaPlayer/ijkmedia/**" "/Users/chengqihan/Desktop/VMMediaPlayerLib/VMMediaPlayerLib/Classes/sourceijkmedia/**"' }

    #ijkplayer.xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/../../VMMediaPlayerLib/Classes/sourceijkmedia/**" "${PODS_ROOT}/../../VMMediaPlayerLib/Classes/IJKMediaPlayer/ijkmedia/**" "${PODS_ROOT}/../../VMMediaPlayerLib/Classes/ffmpegBuild/universal/include/**"' }
    end

    s.subspec 'ijksdl-ios-mrc' do |ss|
    ss.dependency 'VMMediaPlayerLib/Ijkplayer'
    ss.requires_arc         = false;
    ss.source_files         = ['VMMediaPlayerLib/Classes/IJKMediaPlayer/**/ijksdl_aout_ios_audiounit.m', 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/ijksdl_vout_ios_gles2.m']
    #ss.private_header_files = 'ios/IJKMediaPlayer/IJKMediaPlayer/ijkmedia/ijksdl/**/*.h'
    #ss.header_mappings_dir  = 'ios/IJKMediaPlayer/IJKMediaPlayer/ijkmedia'
    end

    s.subspec 'ijkplayer-ios-mrc' do |ss|
    ss.dependency 'VMMediaPlayerLib/Ijkplayer'
    ss.dependency 'VMMediaPlayerLib/ijksdl-ios-mrc'
    ss.requires_arc         = false;
    ss.source_files         = 'VMMediaPlayerLib/Classes/IJKMediaPlayer/**/ijkplayer_ios.m'
    #ss.private_header_files = 'ios/IJKMediaPlayer/IJKMediaPlayer/ijkmedia/ijkplayer/**/*.h'
    #ss.header_mappings_dir  = 'ios/IJKMediaPlayer/IJKMediaPlayer/ijkmedia'
    end
end

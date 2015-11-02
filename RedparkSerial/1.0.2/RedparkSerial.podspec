Pod::Spec.new do |s|
  s.name             = "RedparkSerial"
  s.version          = "1.0.2"
  s.summary          = "Pod including Redpark Serial sdk"
  s.description      = <<-DESC
    This pod was intended only to include the Redpark Serial SDK to facilitate the inclusion of the library amongst different projects.
    After installing the pod, update the Info.plist file with the following values:
    <key>UISupportedExternalAccessoryProtocols</key>
      <array>
        <string>com.redpark.hobdb9v</string>
        <string>com.redpark.ser45v</string>
        <string>com.redpark.ser45</string>
        <string>com.redpark.nmeax</string>
        <string>com.redpark.appgps</string>
        <string>com.redpark.serdb9</string>
        <string>com.redpark.serEval</string>
        <string>com.redpark.hobdb9</string>
      </array>
  DESC

  s.homepage         = "http://wall-e.medes.fr/git/RedparkSerial.git"
  s.license          = 'MIT'
  s.author           = { "Nicolas Linard" => "nicolas.linard@valtech.fr" , "Yann Lapeyre" => "yann.lapeye@medes.fr"}
  s.source           = { :git => "http://wall-e.medes.fr/git/RedparkSerial.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'RedparkSerial' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/*.h'
  s.ios.vendored_library = 'Pod/Libs/libRscMgrUniv.a'
end

Pod::Spec.new do |s|
  s.name = 'OpenAPIClient'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '6bcd87ffe681bca0adfbc96893f1cd1f0f5f7411'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v6bcd87ffe681bca0adfbc96893f1cd1f0f5f7411' }
  s.authors = 'OpenAPI Generator'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'OpenAPIClient Swift SDK'
  s.source_files = 'OpenAPIClient/Classes/**/*.swift'
end
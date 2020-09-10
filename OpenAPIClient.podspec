Pod::Spec.new do |s|
  s.name = 'OpenAPIClient'
  s.ios.deployment_target = '10.0'
  s.version = '1.0'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v6bcd87ffe681bca0adfbc96893f1cd1f0f5f7411' }
  s.authors = 'OpenAPI Generator'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'OpenAPIClient Swift SDK'
  s.source_files = 'OpenAPIClient/Classes/**/*.swift'
end

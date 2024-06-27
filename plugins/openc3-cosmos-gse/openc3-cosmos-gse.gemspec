# encoding: ascii-8bit

# Create the overall gemspec
Gem::Specification.new do |s|
  s.name = 'openc3-cosmos-gse'
  s.summary = 'OpenC3 openc3-cosmos-gse plugin'
  s.description = <<-EOF
    openc3-cosmos-gse plugin for deployment to OpenC3
  EOF
  s.license = 'MIT'
  s.authors = ['Bryce Verberne']
  s.email = ['bverbern@asu.edu']
  s.homepage = 'https://github.com/BryceVerberne/COSMOS_Testing.git'
  s.platform = Gem::Platform::RUBY

  if ENV['VERSION']
    s.version = ENV['VERSION'].dup
  else
    time = Time.now.strftime("%Y%m%d%H%M%S")
    s.version = '0.0.0' + ".#{time}"
  end
  s.files = Dir.glob("{targets,lib,tools,microservices}/**/*") + %w(Rakefile README.md LICENSE.txt plugin.txt)
end

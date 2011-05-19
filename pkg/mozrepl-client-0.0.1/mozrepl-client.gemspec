# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mozrepl-client}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Craig Muth and Neal Lindsay"]
  s.date = %q{2011-05-18}
  s.description = %q{A wrapper around mozrepl - pass javascript to your browser to run!}
  s.email = %q{}
  s.extra_rdoc_files = ["lib/mozrepl_client.rb"]
  s.files = ["Rakefile", "lib/mozrepl_client.rb", "mozrepl-client.notes", "Manifest", "mozrepl-client.gemspec"]
  s.homepage = %q{http://github.com/trogdoro/mozrepl_client}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Mozrepl-client"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{mozrepl-client}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A wrapper around mozrepl - pass javascript to your browser to run!}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

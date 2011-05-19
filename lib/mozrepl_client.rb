require 'socket'

class MozreplClient
  def self.read s
    r = ''
    loop do
     r << s.readchar.chr

     break if r =~ /^repl\d*> $/
    end
    r.sub /^repl\d*> /, ''
  end

  def self.run js, options={}
    s = TCPSocket::new("localhost", "4242")

    initial_crap = self.read s
    repl = initial_crap[/repl\d+/] || 'repl'
    if options[:tab]   # Run js in page on nth tab
      s.puts("#{repl}.enter(window.gBrowser.getBrowserAtIndex(#{options[:tab]}).contentDocument)\n;")
      self.read s
    elsif options[:browser]   # Run js at browser outer level
    else   # Run js in page
      s.puts("#{repl}.enter(content.wrappedJSObject)\n;")
      self.read s
    end

    s.puts js
    txt = self.read s
    s.close
    txt.strip
  end
end


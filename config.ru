#code from https://github.com/xaviershay/xaviershay.com
#run with rackup --port 3000
use Rack::Static, :urls => ["/style.css"], :root => "output"
run lambda { |env| [200, { 'Content-Type' => 'text/html', 'Cache-Control' => 'public, max-age=86400' }, File.open('output/index.html', File::RDONLY)] }

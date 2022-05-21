struct V4
  getter :octet1

  def initialize(
    @octet1 : Int32, 
    @octet2 : Int32, 
    @octet3 : Int32, 
    @octet4 : Int32)
  end
end

struct V6
  def initialize(@str : String)
  end
end

alias Ip = V4 | V6

home = V4.new(127,0,0,1)
loopback = V6.new("::1")

def show_ip(ip)
  puts case ip
  when V4 then "ip v4 #{ip.octet1}"
  # when V6 then "ip v6"
  end
end

show_ip V4.new(5,7,7,7)
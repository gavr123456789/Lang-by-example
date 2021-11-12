# t1 = {x: 1, y: "hi"}   # Tuple(x: Int32, y: String)
# t2 = {y: true, x: nil} # Tuple(y: Bool, x: Nil)

# t3 = rand < 0.5 ? t1 : t2
# typeof(t3) # NamedTuple(x: Int32 | Nil, y: String | Bool)


record StageInitial, data : String
record StageFinished, data : String
alias Stage = StageInitial | StageFinished



class ClassName
  @a : String
end

# aqw = :z | :r
# !p aqw
###

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

alias Ip = V4 | V6 | String

home = V4.new(127,0,0,1)
loopback = V6.new("::1")


def show_ip(ip : Ip): Void
  case ip
  in V4 
    puts "ip v4 #{ip.octet1}"
  in V6 then
    puts "Sas"
  # when V6 then "ip v6"
  end
end

show_ip V4.new 1,2,3,4
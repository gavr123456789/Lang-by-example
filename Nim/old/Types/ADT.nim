type 
  NodeKind = enum
      NotAsked,         
      Loading,        
      Fail,       
      Success  
  RemoteData = object      
    case kind: NodeKind
    of NotAsked:
      sideLength: int
    of Loading:
      discard
    of Success:
      result: int
    of Fail:
      error: string


proc foo(x: RemoteData) =
  case x.kind:
  of NotAsked:
    echo x.result
  else:
    echo "nothing"
  
foo(RemoteData(kind: NotAsked))
require "../stddef"
require "../stdint"

lib LibC
  alias BlkcntT = Long
  alias BlksizeT = Int
  alias ClockT = Long
  alias ClockidT = Int
  alias DevT = ULong
  alias GidT = UInt
  alias IdT = UInt
  alias InoT = ULong
  alias ModeT = UInt
  alias NlinkT = UInt
  alias OffT = Long
  alias PidT = Int
  alias PthreadT = UInt
  alias SSizeT = Long
  alias SusecondsT = Long
  alias TimeT = Long
  alias UidT = UInt

  type PthreadMutexattrT = Void*

  type PthreadAttrT = Void*
  type PthreadCondT = Void*
  type PthreadCondattrT = Void*
  type PthreadMutexT = Void*

end

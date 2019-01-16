require "../stddef"
require "../stdint"

lib LibC
  alias BlkcntT = Long
  alias BlksizeT = Int
  alias CAddrT = Char
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
  alias SockAddrT = Int16T
  alias SSizeT = Long
  alias SusecondsT = Long
  alias TimeT = Long
  alias UidT = UInt
  alias UPad64T = UInt64

  alias PthreadT = UInt

  struct PthreadMutexFlagsT
    __pthread_mutex_flag1 : UInt16T
    __pthread_mutex_flag2 : UInt8T
    __pthread_mutex_ceiling : UInt8T
    __pthread_mutex_type : UInt16T
    __pthread_mutex_magic : UInt16T
  end

  struct PthreadAttrT
    __pthread_attrp : Void*
  end

  struct PthreadCondFlagsT
    __pthread_cond_flag : UInt8T[4]
    __pthread_cond_type : UInt16T
    __pthread_cond_magic : UInt16T
  end

  struct PthreadCondT
    __pthread_cond_flags : PthreadCondFlagsT
    __pthread_cond_data : UPad64T
  end

  struct PthreadCondattrT
    __pthread_condattrp : Void*
  end

  struct PthreadMutexLock64T
    __pthread_mutex_pad : UInt8T[8]
  end

  struct PthreadMutexLock32T
    __pthread_ownerpid : UInt32T
    __pthread_lockword : UInt32T
  end

  union PthreadMutexLockT
    __pthread_mutex_lock64 : PthreadMutexLock64T
    __pthread_mutex_lock32 : PthreadMutexLock32T
    __pthread_mutex_owner64 : UPad64T
  end

  struct PthreadMutexT
    __pthread_mutex_flags : PthreadMutexFlagsT
    __pthread_mutex_lock : PthreadMutexLockT
    __pthread_mutex_data : UPad64T
  end

  struct PthreadMutexattrT
    __pthread_mutexattrp : Void*
  end
end

require "./sys/types"

#@[Link("pthread")]
lib LibC
  PTHREAD_MUTEX_ERRORCHECK = 2

  fun pthread_condattr_destroy(attr : PthreadCondattrT*) : Int
  fun pthread_condattr_init(attr : PthreadCondattrT*) : Int
  fun pthread_condattr_setclock(attr : PthreadCondattrT*, type : ClockidT) : Int
  fun pthread_cond_broadcast(cond : PthreadCondT*) : Int
  fun pthread_cond_destroy(cond : PthreadCondT*) : Int
  fun pthread_cond_init(cond : PthreadCondT*, cond_attr : PthreadCondattrT*) : Int
  fun pthread_cond_signal(cond : PthreadCondT*) : Int
  fun pthread_cond_timedwait(cond : PthreadCondT*, mutex : PthreadMutexT*, abstime : Timespec*) : Int
  fun pthread_cond_wait(cond : PthreadCondT*, mutex : PthreadMutexT*) : Int
  fun pthread_create(thread : PthreadT*, attr : PthreadAttrT*, start_routine : Void* -> Void*, arg : Void*) : Int
  fun pthread_detach(thread : PthreadT) : Int
  fun pthread_join(thread : PthreadT, status : Void**) : Int
  fun pthread_mutexattr_destroy(attr : PthreadMutexattrT*) : Int
  fun pthread_mutexattr_init(attr : PthreadMutexattrT*) : Int
  fun pthread_mutexattr_settype(attr : PthreadMutexattrT*, type : Int) : Int
  fun pthread_mutex_destroy(mutex : PthreadMutexT*) : Int
  fun pthread_mutex_init(mutex : PthreadMutexT*, attr : PthreadMutexattrT*) : Int
  fun pthread_mutex_lock(mutex : PthreadMutexT*) : Int
  fun pthread_mutex_trylock(mutex : PthreadMutexT*) : Int
  fun pthread_mutex_unlock(mutex : PthreadMutexT*) : Int
  fun pthread_self : PthreadT
end

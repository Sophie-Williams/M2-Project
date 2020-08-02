#pragma once

#include <boost/intrusive_ptr.hpp>

#ifdef M2_USE_POOL
#include "pool.h"
#endif

struct event_info_data 
{
	event_info_data() {}
	virtual ~event_info_data() {}

#ifdef M2_USE_POOL
	static void* operator new(uint32_t size) {
		return pool_.Acquire(size);
	}
	static void operator delete(void* p, uint32_t size) {
		pool_.Release(p, size);
	}
private:
	static MemoryPool pool_;
#endif
};
	
typedef struct event EVENT;
typedef boost::intrusive_ptr<EVENT> LPEVENT;


typedef int32_t (*TEVENTFUNC) (LPEVENT event, int32_t processing_time);

#define EVENTFUNC(name)	int32_t (name) (LPEVENT event, int32_t processing_time)
#define EVENTINFO(name) struct name : public event_info_data

struct TQueueElement;

struct event
{
	event() : func(NULL), info(NULL), q_el(NULL), ref_count(0) {}
	~event() {
		if (info != NULL) {
#ifdef M2_USE_POOL
			delete info;
#else
			M2_DELETE(info);
#endif
		}
	}
	TEVENTFUNC			func;
	event_info_data* 	info;
	TQueueElement *		q_el;
	char				is_force_to_end;
	char				is_processing;

	uint32_t ref_count;
};

extern void intrusive_ptr_add_ref(EVENT* p);
extern void intrusive_ptr_release(EVENT* p);

template<class T>
T* AllocEventInfo() {
#ifdef M2_USE_POOL
	return new T;
#else
	return M2_NEW T;
#endif
}

extern void		event_destroy();
extern int32_t		event_process(int32_t pulse);
extern int32_t		event_count();

#define event_create(func, info, when) event_create_ex(func, info, when)
extern LPEVENT	event_create_ex(TEVENTFUNC func, event_info_data* info, int32_t when);
extern void		event_cancel(LPEVENT * event);
extern int32_t 		event_processing_time(LPEVENT event);
extern int32_t 		event_time(LPEVENT event);
extern void		event_reset_time(LPEVENT event, int32_t when);
extern void		event_set_verbose(int32_t level);

extern event_info_data* FindEventInfo(uint32_t dwID);
extern event_info_data*	event_info(LPEVENT event);

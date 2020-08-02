#pragma once

class MallocAllocator{
public:
	MallocAllocator() {}
	~MallocAllocator() {}

	void SetUp() {}
	void TearDown() {}

	void* Alloc(uint32_t size) {
		return ::malloc(size);
	}
	void Free(void* p) {
		::free(p);
	}
};

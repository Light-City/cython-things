from libcpp.vector cimport vector
cdef extern from "foo.h":
    cdef cppclass Foo:
        Foo() except +
        void sort(vector[int]& nums) except +
        int sum(vector[int]& nums) except +

cdef class PyFoo:
    cdef Foo* f

    def __cinit__(self):
        self.f = new Foo()

    def __dealloc__(self):
        del self.f

    def sort(self, nums):
        cdef vector[int] c_nums = nums
        self.f.sort(c_nums)

    def sum(self, nums):
        cdef vector[int] c_nums = nums
        return self.f.sum(c_nums)

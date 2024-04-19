from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize
import numpy

ext = Extension('Foo', sources=["foo.pyx"], language="c++", include_dirs=[numpy.get_include()])

setup(name="Foo", ext_modules = cythonize([ext]))

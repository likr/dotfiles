from setuptools import setup
from setuptools import find_packages
import sys

tests_require = ['nose']
major = sys.version_info[0]
minor = sys.version_info[1]
if major == 2 and minor < 7:
    tests_require.append('unittest2')
elif major == 3 and minor < 2:
    tests_require.append('unittest2py3k')

setup(name='',
      version='0.0.1',
      author='Yosuke ONOUE',
      author_email='onoue@likr-lab.com',
      packages=find_packages(),
      test_suite='nose.collector',
      tests_require=tests_require,
      )

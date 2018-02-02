For `v1.0.1`, we patched the original `setup.py` to:

```python
"""Install Parcels and dependencies."""

try:
    from setuptools import setup, find_packages
except ImportError:
    from distutils.core import setup, find_packages

setup(name='parcels',
      version='1.0.1',
      description="""Framework for Lagrangian tracking of virtual
      ocean particles in the petascale age.""",
      author="oceanparcels.org team",
      packages=find_packages(),
      package_data={'parcels': ['include/*',
                                'examples/*']},
      entry_points={'console_scripts': [
          'parcels_get_examples = parcels.scripts.get_examples:main']}
      )
```

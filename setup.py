from setuptools import setup, find_packages
from typing import List

def get_requirements(file_path: str)->List[str]:
    '''i
    This function will return the list of requirements
    '''
    requirements = []
    with open(file_path, 'r') as f:
        requirements = f.readlines()
        [req.replace('\n', '') for req in requirements] 
        if '-e .' in requirements:
            requirements.remove('-e .')

    return requirements


setup(
    name='mlopsproject',
    version='0.1',
    author='Vishwas P'
    author_email='vp14032001@gmail.com'
    packages=find_packages(),
    install_requires = get_requirements('requirements.txt'),    
)

#!/usr/bin/env python3
from setuptools import setup

setup(
    name='pickpocket',
    version='0.0.1',
    description=(
        'Pick ligand specific pockets'
    ),
    author='Benjamin Viart and Claudio Lorenzi',
    entry_points={
        'console_scripts': [
            'pickPocket = src.pickPocket:main',
        ]
    },
    packages=[
        'src/pickpocket',
    ],
    install_requires=[
        'pdb-tools',
        'numpy>=1.18.5',
        'scipy>=1.2.0',
        'scikit-learn>=0.24.1',
        'pandas>=1.1.3',
        'pymoo>=0.4.2.1',
        'biopython>=1.76',
        'matplotlib>=3.3.0'
    ],
)

[![https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg](https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg)](https://singularity-hub.org/collections/1321)
[![GitHub License](https://img.shields.io/badge/license-MIT-green.svg)](https://opensource.org/licenses/MIT)

## Singularity containers
<br>

This Github repository maintains *Singularity* image files for R or Python packages which are difficult to configure / set-up on an operating system other than Linux. My main purpose of utilizing Singularity is that packages I currently maintain (*RGF*, *nmslibR*, *fuzzywuzzyR*) can take a great amount of time to install and might lead to operating system problems. Taking advantage of the Singularity images a user can work from within the *Rstudio IDE* (port 8787) in case of R or from within a *Jupyter notebook* (port 8888) in case of Python. The images can be pulled / built either locally or in a cloud instance (I'll add documentation in the next few days).

Singularity is a container solution similar to [docker](https://www.docker.com/). More information can be found in the [documentation](https://www.sylabs.io/guides/2.5.1/user-guide.pdf) and in the *References* that I included in the README.md file.


**References** :

* https://github.com/singularityhub
* https://vsoch.github.io/
* https://github.com/nickjer/singularity-rstudio
* https://github.com/nickjer/singularity-r
* https://bwlewis.github.io/r-and-singularity/

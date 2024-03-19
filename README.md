**TOC**: 

1. [ 👋 Introduction ](#desc)
2. [🎬 Getting Started](#start)
3. [💣 Issues](#issues)

<a name="desc"></a>
# Predicting the early symptoms of Dementia using Python 🧠

*Modelling machine learning techniques using python to predict the early symptoms of Dementia &amp; Alzheimer's Disease*.

I created a series of blogs describing this project over at https://jdickson.dev/ 📍 

The project in the initial blog post was written using a language called `q`. It was based on a python project I did moooooons ago. This repo contains this **raw** python project updated to work with Python `3.10`


Datasets used in this project have been provided by the **Open Access Series of Imaging Studies (OASIS)**. Acknowledgements:

> OASIS-1: Cross-Sectional: Principal Investigators: D. Marcus, R, Buckner, J, Csernansky J. Morris; P50 AG05681, P01 AG03991, P01 AG026276, R01 AG021910, P20 MH071616, U24 RR021382
> 
> OASIS-2: Longitudinal: Principal Investigators: D. Marcus, R, Buckner, J. Csernansky, J. Morris; P50 AG05681, P01 AG03991, P01 AG026276, R01 AG021910, P20 MH071616, U24 RR021382


<a name="start"></a>
## Getting Started 🎬

To make things easier, I've containerised it 🐳

Docker must be installed for this project to run successfully. 


---

### Jupyter notebook 📓
To bring up the `Jupyterq` notebook:

```bash
$ docker-compose up -d
```

*The base image that is used to create the jupyter container takes a few minutes*

The logs of the jupyter container should output a `<url?token>` path. Grab that value and paste it in a browser... *for e.g.:*

```bash
$ docker logs `docker ps --format "{{.Names}}" --filter name=notebook` 2>&1 | grep '127.0' | tail -n 1
  http://127.0.0.1:8888/?token=ea3bae6a687c231dd2ca41dbba3edf653f92392eebc7a512
```

Voilà, this should bring up a homepage where a notebook called `noteboo.ipynb` exists. 

Click on the file to access the notebook.

<a name="issues"></a>
## Issues 🎯
 
- [ ] Have you installed the latest Docker update? 🐳
  - This has been tested on Docker Desktop `4.16.2` / `4.16.3`.

- [ ] Is the evaluation taking too long? 🐌
  - There's an environment variable called `PARALLEL_JOBS` defined in the docker-compose file.
  - This **controls** how many parallel jobs run during *hyperparameter* tuning (GridSearch / Randomized gridsearch etc).
  - Generally, *more threads = better performance*.
  - How much resources are available to Docker?
    - *Can you give more CPU / Memory?*
# Travis CI ← Spigot(net.minecraft.server) dependencies
Simply executes BuildTools.jar in the ci environment.

## Guide
* Add these lines to the **.travis.yml** file of your repository
```yaml
before_install:
  - wget https://raw.githubusercontent.com/noonmaru/travis-ci-buildtools/master/buildtools.sh
  - chmod +x buildtools.sh
  - ./buildtools.sh 1.16.2 1.16.1 ← Put versions you want
```

### NOTE
Configuring spigot dependencies requires a lot of time.

It is inefficient to re-download dependencies every time a build is run.

You can speed up the build by setting cache on the travis ci.

All you need to do is add the following line to the **.travis.yml**
```yaml
cache:
  directories:
    - '$HOME/.m2'
```

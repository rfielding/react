A React Dev Env to keep the tooling off of my machine
======================

We assume that Docker is installed.  Make the container, after creating a presumed directory

```
mkdir reactdev
./build 
```

Now, you can launch into this container to do dev work:

```
./spawn
```

The directory `mounted/reactdev` is mounted and persistent, so you can use the artifacts from your host.
We also mount port 3000 so that you can get to the container running with yarn, etc.

If you were to build an app
```
cd mounted/reactdev
create-react-app rjfapp
cd rjfapp
git init
git add .
git add .gitignore  #make sure that node_modules is ignored!
...
```

Then you should be able to then run it with yarn
```
cd mounted/reactdev/rjfapp
yarn start   # running on port 3000 shortly
```
And see it from your docker host.

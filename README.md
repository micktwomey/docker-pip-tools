# docker-pip-tools

Update those requirements.txt files with pip-tools

Usage (assuming you have requirements in requirements.in):

```
docker run -v $(pwd):/src --rm -it micktwomey/pip-tools
```

This will build a requirements.txt for you.

## Why?

Why not simply pip install pip-tools? This keeps your host machine environment pristine and also means you don't drag it in as a dependency in your production environments. Also, why not?

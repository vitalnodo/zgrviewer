# ZGRViewer (Dockerized)

This is a Dockerized version of [ZGRViewer](https://zvtm.sourceforge.net/zgrviewer.html), a GraphViz `.dot` file viewer.

1. Build the image
```bash
docker build -t zgrviewer .
```

2. Run the container (Linux)
```bash
docker run -it \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v "$(pwd)/dot:/app/dot" \
    zgrviewer
```

3. Add a dot file

Add your .dot file to the dot/ folder.

4. Open /app/dot/your_file.dot in the program.

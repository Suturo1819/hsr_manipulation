#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/move"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/michel/Desktop/suturo/motion/simulation/hsr_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/michel/Desktop/suturo/motion/simulation/hsr_ws/install/lib/python2.7/dist-packages:/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/move/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/move" \
    "/usr/bin/python" \
    "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/src/move/setup.py" \
    build --build-base "/home/michel/Desktop/suturo/motion/simulation/hsr_ws/build/move" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/michel/Desktop/suturo/motion/simulation/hsr_ws/install" --install-scripts="/home/michel/Desktop/suturo/motion/simulation/hsr_ws/install/bin"

#/bin/sh

if [ "binary" = "$1" ]; then
    pushd /tmp
    curl -sSL https://bit.ly/2ysbOFE | bash -s -- 2.1.1 1.4.7 0.4.20 -ds
    popd
    cp -r /tmp/bin .
fi

if [ "docker" = "$1" ]; then
    curl -sSL https://bit.ly/2ysbOFE | bash -s -- 2.1.1 1.4.7 0.4.20 -bs
fi

if [ -x "$(command -v gcc)" ]; then
    echo "gcc is installed"
else
    echo "gcc is not installed"
    apt install -y gcc
fi
if [ -x "$(command -v g++)" ]; then
    echo "g++ is installed"
else
    echo "g++ is not installed"
    apt install -y g++
fi
if [ -x "$(command -v make)" ]; then
    echo "make is installed"
else
    echo "make is not installed"
    apt install -y make
fi
if [ -x "$(command -v curl)" ]; then
    echo "curl is installed"
else
    echo "curl is not installed"
    apt install -y curl
fi
if [ -x "$(command -v unzip)" ]; then
    echo "unzip is installed"
else
    echo "unzip is not installed"
    apt install -y unzip
fi
if [ -x "$(command -v tar)" ]; then
    echo "tar is installed"
else
    echo "tar is not installed"
    apt install -y tar
fi

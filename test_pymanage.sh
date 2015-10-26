#!/bin/sh

chmod +x ./pymanage

assert_exists_dir() {
    if [ ! -d $1 ]; then
        exit 1
    fi
}

assert_exists_file() {
    if [ ! -f $1 ]; then
        exit 1
    fi
}

case ${TRAVIS_OS_NAME} in
    "linux")
        assert_exists_dir '/opt/python-3.5.0'
        exit 0
        ;;
    "osx")
        assert_exists_dir '/opt/python-3.5.0'
        exit 0
        ;;
    *)
        exit 1
        ;;
esac


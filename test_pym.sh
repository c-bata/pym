#!/bin/sh

assert_exists_dir() {
    if [ ! -d $1 ]; then
        exit 1
    fi
}

assert_exists_symlink() {
    if [ ! -f $1 ]; then
        exit 1
    fi
}

case ${TRAVIS_OS_NAME} in
    "linux")
        assert_exists_dir "${PYM_ROOT:-/opt}/python-3.5.0"
        assert_exists_symlink "${PYM_PATH:-/usr/local/bin}/python3.5"
        ;;
    "osx")
        assert_exists_dir "${PYM_ROOT:-/opt}/python-3.5.0"
        assert_exists_symlink "${PYM_PATH:-/usr/local/bin}/python3.5"
        ;;
    *)
        exit 1
        ;;
esac


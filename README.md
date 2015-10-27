# pym: Simple python interpreter manager

[![Build Status](https://travis-ci.org/c-bata/pym.svg?branch=master)](https://travis-ci.org/c-bata/pym)

`pyenv` offers a lot of python versions.
Especially it can install anaconda easily.

But some features make an our environment to complex.
For example, It is unnecessary for PyCharm users that the features to bind python interpreter to specific directory
by `pyenv local` and `pyenv global` commands.
And `pyenv-virtualenv` is too difficult for me.
I want a more simple interpreter management tool.

`pym` just offers following functions.

- Installing specified version's python interpreter to under `/opt`
- Create symlink to `/usr/local/bin`
- Create virtualenv using `pyvenv` or `virtualenv`.



## Installation

###### Mac OSX

```
$ brew tap c-bata/pym
$ brew install pym
```


###### Linux

- Download [release file](https://github.com/c-bata/pym/releases) or Copy and paste pym script.
- Set PATH and add permission to execute.

```
$ sudo wget <pym_script_url_on_github_release> -P <path_to_pym_script>
$ sudo chmod +x <path_to_pym_script>
```

**Dependencies**

ref https://docs.python.org/devguide/setup.html

> Fedora, Red Hat Enterprise Linux and other `yum` based systems:
>
> ```
> $ sudo yum install yum-utils
> $ sudo yum-builddep python3
> ```
>
> Debian, Ubuntu and other apt based systems:
>
> ```
> $ sudo apt-get build-dep python3.4
> ```


## Tutorial

###### 1. Install python

```
$ sudo pym install 3.4.3
$ sudo pym install 3.5.0
```

```
$ ls /opt/
python-3.4.3 python-3.5.0
$ pym install --list
3.4.3
3.5.0
```

###### 2. Install python

```
$ pym link --avairable
3.4.3
3.5.0
$ sudo pym link 3.4.3
$ sudo pym link 3.5.0
```

```
$ ls /usr/local/bin/ | grep python
python3.4
python3.5
$ pym link --list
3.4
3.5
```


###### 3. Create the virtualenv

```
$ pym venv --avairable
3.4
3.5
$ pym venv 3.5 sandbox
```

```
$ source sandbox/bin/activate
(sandbox) $ python --version
Python 3.5.0
```


## For more options

Try "pym help" for more options.

```
$ pym help
pym is a simple manager of python interpreter.

Version:
    0.0.3

Usage:
    install <version>            Install a Python version in "/opt"
    link <version>               Create symlink from specified version's python to "/usr/local/bin"
    venv <version> <dirname>     Create virtualenv using pyvenv or virtualenv

Environment variables:
    PYM_ROOT : An installed python interpreter path  (default: "/opt")
    PYM_PATH : A created symlink path                (default: "/usr/local/bin")
    PYM_TMP  : A path to store temporary file        (default: "/tmp")

Options:
    --version, -v      print pym version
    --help, -h         print this

Example:
    $ sudo pym install 3.5.0
    $ sudo pym link 3.5.0
    $ pym venv 3.5 sandbox
```

## LICENSE

This software is licensed under the MIT License.


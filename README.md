# pym: Simple python interpreter manager

[![Build Status](https://travis-ci.org/c-bata/pym.svg?branch=master)](https://travis-ci.org/c-bata/pym)

**NOT MAINTAINED. And I aware of we should use [python-build](https://github.com/yyuu/pyenv/tree/master/plugins/python-build).**
**I hope python-build will be separated from pyenv.**

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

#### Mac OSX

```
$ brew tap c-bata/pym
$ brew install pym
```

Even if you don't use homebrew, you are avairable by the same way with how to install on linux.


#### Linux

- Download [release file](https://github.com/c-bata/pym/releases) or Copy and paste pym script.
- Set PATH and add permission to execute.

```
$ sudo wget <pym_script_url_on_github_release> -P <path_to_pym_script>
$ sudo chmod +x <path_to_pym_script>
```

**Dependencies**

ref https://docs.python.org/devguide/setup.html

> Fedora, Red Hat Enterprise Linux and other `yum` based systems:

> ```
> $ sudo yum install yum-utils
> $ sudo yum-builddep python3
> ```

> Debian, Ubuntu and other apt based systems:

> ```
> $ sudo apt-get build-dep python3.4
> ```


## Tutorial

#### 1. Install python

Following command install specified python under `/opt/`.

```
$ sudo pym install 3.4.3
$ sudo pym install 3.5.0
```


#### 2. Create symlink

```
$ pym link --list  # It is the same as `ls /opt/ | grep python`.
3.4.3
3.5.0
$ sudo pym link 3.4.3
$ sudo pym link 3.5.0
```

Preceding command created symbolic link under `/usr/local/bin/`.

```
$ which python3.4
/usr/local/bin/python3.4
$ which python3.5
/usr/local/bin/python3.5
```


#### 3. Create the virtualenv

```
$ pym venv --list  # show avairable interpreter. It is the same as `ls /usr/local/bin/ | grep python`.
3.4
3.5
$ pym venv 3.5 sandbox
```

```
$ source sandbox/bin/activate
(sandbox) $ python --version
Python 3.5.0
```

:tada: Congratulations!


## Environment variables

- `$PYM_ROOT`
    The path where the interpreters are installed to. (default: "/opt")

- `$PYM_PATH`
    The path where the scripts are symlinked to. (default: "/usr/local/bin")

- `$PYM_TMP`
    The folder to store temporary file. (default: "/tmp")


## For more options

Try `pym help` for more options.


## LICENSE

This software is licensed under the MIT License.


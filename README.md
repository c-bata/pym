# pymanage: Simple python interpreter manager

`pyenv` offers a lot of python versions.
Especially it can install anaconda easily.

But some features make an our environment to complex.
For example, It is unnecessary for PyCharm users that the features to bind python interpreter to specific directory
by `pyenv local` and `pyenv global` commands.
And `pyenv-virtualenv` is too difficult for me.
I want a more simple interpreter management tool.

`pymanage` just offers following functions.

- Installing specified version's python interpreter to under `/opt`
- Create symlink to `/usr/local/bin`
- Create virtualenv using `virtualenv`.


## Tutorial

###### 1. Install pymanage

- Download [release file](https://github.com/c-bata/pymanage/releases) or Copy and paste pymanage script.
- Set PATH and add permission to execute.

```
$ sudo wget <pymanage script url on github release> -P /usr/bin
$ sudo chmod +x /usr/bin/pymanage
```

###### 2. Install python

```
$ sudo pymanage install 3.4.3
$ sudo pymanage install 3.5.0
$ ls /opt/
python-3.4.3 python-3.5.0
```

###### 3. Install python

```
$ sudo pymanage link 3.4.3
$ sudo pymanage link 3.5.0
$ ls /usr/local/bin/ | grep python
python3.4
python3.5
$ which python3.4
/usr/local/bin/python3.4
$ which python3.5
/usr/local/bin/python3.5
```

###### 4. Create the virtualenv

```
$ pymanage venv 3.5 sandbox
$ source sandbox/bin/activate
(sandbox) $ python --version
Python 3.5.0
```

## For more options

Try "pymanage help" for more options.

```
$ pymanage help
pymanage is a simple manager of python interpreter.

Version:
    0.0.1

Usage:
    install <version>            Install a Python version in "/opt"
    link <version>               Create symlink from specified version's python to "/usr/local/bin"
    venv <version> <dirname>     Create virtualenv using pyvenv or virtualenv

Options:
    --version, -v      print pymanage version
    --help, -h         print this

Example:
    $ sudo pymanage install 3.5.0
    $ sudo pymanage link 3.5.0
    $ pymanage venv 3.5 sandbox
```

## LICENSE

This software is licensed under the MIT License.


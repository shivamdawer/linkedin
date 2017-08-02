Linkedin Web Search
===================

WIP
---


To install (Python 3)

::

    $ python -m virtualenv venv
    $ ./venv/bin/pip install -r requirements.txt


To install Selenium, Chrome, and 'ChromeDriver' :
    https://gist.github.com/ziadoz/3e8ab7e944d02fe872c3454d17af31a5


To install firefox 39.0.3 :

::

    $ sudo apt-get purge firefox
    $ wget sourceforge.net/projects/ubuntuzilla/files/mozilla/apt/pool/main/f/firefox-mozilla-build/firefox-mozilla-build_39.0.3-0ubuntu1_amd64.deb
    $ sudo dpkg -i firefox-mozilla-build_39.0.3-0ubuntu1_amd64.deb


Ubuntu

::

    $ sudo apt-get update && sudo apt-get upgrade
    $ sudo apt-get install build-essentials python-dev libssl-dev libffi-dev
    $ sudo apt-get install python-virtualenv
    $ virtualenv venv
    $ ./venv/bin/pip install pip --upgrade
    $ ./venv/bin/pip install -r requirements.txt
    $ ./venv/bin/pip install pyopenssl [ incase of insecure warning / or just to be safe ]

To store password in keychain

::

    $ python linkedin.py store me@email.com
    Password: **


To run crawler

::

    $ python linkedin.py crawl me@email.com list_of_names.csv --browser=chrome

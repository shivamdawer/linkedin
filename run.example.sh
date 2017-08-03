cd /var/www/html/linkedin-bot
source venv/bin/activate
./venv/bin/pip install pip --upgrade
./venv/bin/pip install -r requirements.txt
./venv/bin/pip install pyopenssl
echo password > python linkedin.py store me@email.com
killall Xvfb
Xvfb :99 -ac -screen 0 1280x1024x24 &
export DISPLAY=:99
nice -n 10 x11vnc 2>&1 &
ng e2e --serve true --port 4200 --watch true
python linkedin.py crawl me@email.com list_of_names.csv --browser=chrome
# Running

```
git clone https://github.com/mkasztelnik/rails-omni-tests.git
cd rails-omni-test
bundle install
```

Create `.env` file with following content:

```
CHECKIN_HOST=aai-dev.egi.eu
CHECKIN_IDENTIFIER=FIXME
CHECKIN_SECRET=FIXME

PLGRID_HOST=sso.pre.plgrid.pl
PLGRID_IDENTIFIER=FIXME
PLGRID_SECRET=FIXME
```
Run rails application:

```
rails s
```
Visit http://localhost:3000

## **Environment Requisites**

1. Install RVM:

```
 curl -sSL https://get.rvm.io | bash -s stable
```
to start using RVM you need to run `source ~/.rvm/scripts/rvm`

2. Install Ruby:

```
rvm install ruby-2.6.3
```

3. Install Bundler Gem to manage Gem dependencies:

```
 gem install bundler
```

4. Install Gem dependencies from Gemfile:

```
 bundle install
```

5. Install Android Platform Tools:

```
brew install android-platform-tools
```

6. Install Node.js:

```
 brew install node
```

7. Install Appium:

```
 npm install -g appium
```

## **Usage**
Before running test cases start Appium:

```
 appium
```
For running tests cases, please use:

```
 bundle exec cucumber -p testproject1
```

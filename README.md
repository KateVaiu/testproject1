## **Environment Requisites**

1.1. Install RVM:

```
 curl -sSL https://get.rvm.io | bash -s stable
```

1.2. Install Ruby:

```
rvm install ruby-2.6.3
```

1.3. Install Bundler Gem to manage Gem dependencies:

```
 gem install bundler
```

1.4. Install Gem dependencies from Gemfile:

```
 bundle install
```

1.5. Install Node.js:

```
 brew install node
```

1.6. Install Appium:

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

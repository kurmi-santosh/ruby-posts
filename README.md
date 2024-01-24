# README

## Installing Ruby

### Check (ruby should be > 2.7.0)

```sh
    ruby -v
```

## Installing RVM 

```sh
    \curl -sSL https://get.rvm.io | bash -s stable --rails 
```
You might get error __rvm_make -j10
It can be fixed with --with-openssl-dir=/opt/homebrew/opt/openssl@1.1

```sh
    brew reinstall openssl@1.1
```
and it shows the hint to setup LDFLAGS, CPPFLAGS and PKG_CONFIG_PATH: 

```sh
    export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
    export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"
    export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"
```
After setting up the above falgs, run rvm install with openssl
```sh
    PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig" rvm install 3.0 --with-open-ssl-dir=/opt/homebrew/opt/openssl@1.1
```
Now you can install rails 

```sh
    \curl -sSL https://get.rvm.io | bash -s stable --rails 
```
You can check the rails installation by running
```sh
    rails -v
    gem environment
```
You can see the EXECUTABLE DIRECTORY and add this to your PATH inside bashrc/zshrc file 

Create project 

```sh
    rails new ruby-posts
    cd ruby-posts
    rake app:update:bin
    rails server
```

Things you may want to cover:

## Steps in creating MVC 

* rails generate model <model_name> (or)
* rails g scaffold Post title:string description:string username:string age:integer
* rails db:migrate  --> generates schema.rb

## Routing 
* /rails/info/routes provides all the available routes
# Message Me

This is a redo of another app title `message_me` as I tried to use `Semantic UI` in a `rails 7.0.0.alpha2` application. I was able render a navbar component but was unable to create a dropdown action using jquery. `config/importmap` was horrendous to use, and given that `rails 7.0.0.alpha2` has only been out for two months, there is virtually no documentation on resolving issues. The javascript is completely changed.

```
$ gem install rails -v 5.2.6 <=== This didnt work; version not compatible w/ ruby 3.0.2
$ gem install rails -v 6.1.4.1
$ rails _6.1.4.1_ new message_me 
```

```rb
ruby '3.0.2'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
```

### Disable Profiler
`Alt+p` w/ `'rails', '~> 6.1.4' `

```
$ rails routes --exanded
```

## Semantic UI
[Semantic UI Link](https://github.com/doabit/semantic-ui-sass)
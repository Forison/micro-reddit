# Micro Reddit Application
This is a simulation of a simple reddit-like application, only the back end has been designed.


## License
See [LICENSE.md](LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to explore the application functionalities from the console:

```
$ rails console
```
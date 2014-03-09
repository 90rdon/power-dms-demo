attr      = DS.attr
hasMany   = DS.hasMany
belongsTo = DS.belongsTo

book = DS.Model.extend
  name:     attr()
  author:   attr()
  type:     attr()
  detail:  attr()
  price:    attr()
  imgPath:  attr()

book.reopenClass
  FIXTURES: [
    {
      'id': 0
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 1
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 2
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 3
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 4
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 5
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 6
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 7
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 8
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 9
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 10
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 11
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 12
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 13
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 14
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 15
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 16
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 17
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 18
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    },
    {
      'id': 19
      'name': 'Lord of the Rings'
      'author': 'J.R.R. Tolkien'
      'type': 'Hardcover'
      'detail': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at lacinia erat. Donec imperdiet viverra ornare. Etiam elit mi, vulputate eu sagittis consectetur, egestas ullamcorper urna. Aenean varius pellentesque eros, sit amet rutrum ligula iaculis sit amet. Quisque condimentum lobortis tincidunt. Nam pretium nisl mi, auctor sagittis ante cursus eget. Nulla facilisi. Fusce est tellus, varius nec iaculis a, ultrices in lacus. Suspendisse faucibus id metus quis semper. Integer sed eleifend lacus. Donec odio risus, consequat varius convallis in, euismod at risus. Donec nulla augue, dapibus et interdum accumsan, pellentesque in purus.'
      'price': 20
      'imgPath': 'assets/img/lord-of-the-rings.jpg'
    }
  ]

`export default book`
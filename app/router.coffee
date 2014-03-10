Router = Ember.Router.extend()

Router.map ->
  @route 'index', path: '/'

Router.reopen
  location: 'hash'

`export default Router`
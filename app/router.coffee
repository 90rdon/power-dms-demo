Router = Ember.Router.extend()

Router.map ->
  @route 'component-test'
  @route 'helper-test'

Router.reopen
  location: 'hash'

`export default Router`
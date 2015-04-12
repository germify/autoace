Template.header.helpers
  activeRouteClass: () ->
    args = Array::slice.call(arguments, 0)
    args.pop()
    active = _.any(args, (name) ->
      Router.current() and Router.current().route.getName() == name
    )
    active and 'active'


#Template.navbar.helpers({
#    activeRouteClass: function(/* route names */) {
#        var args = Array.prototype.slice.call(arguments, 0);
#        args.pop();
#
#        var active = _.any(args, function(name) {
#            return Router.current() && Router.current().route.getName() === name
#        });
#
#        return active && 'active';
#    }
#});
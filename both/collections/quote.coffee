@Quotes = new Meteor.Collection('quotes');

Schemas.Quotes = new SimpleSchema
  name:
    type: String
    max: 50

  email:
    type: String
    regEx: SimpleSchema.RegEx.Email

  phone:
    type: String
    optional: true

  pickupZipCode:
    type: Number
    label: "Pickup Zip Code"

  deliveryZipCode:
    type: Number
    label: "Delivery Zip Code"

  vehicle:
    type: Object
    label: "Vehicle Info"
  "vehicle.year":
    type: Number
  "vehicle.make":
    type: String
  "vehicle.model":
    type: String

  transportType:
    type: Boolean
    label: "Is this an inclosed transport?"
    autoform:
      type: "boolean-radios"
      trueLabel: "Yes, it's an inclosed transport"
      falseLabel: "No, it's an open transport"
      value: false


#  createdAt:
#    type: Date
#    autoValue: ->
#      if this.isInsert
#        new Date()
#
#  updatedAt:
#    type:Date
#    optional:true
#    autoValue: ->
#      if this.isUpdate
#        new Date()
#
#  picture:
#    type: String
#    autoform:
#      afFieldInput:
#        type: 'fileUpload'
#        collection: 'Attachments'
#
#  owner:
#    type: String
#    regEx: SimpleSchema.RegEx.Id
#    autoValue: ->
#      if this.isInsert
#        Meteor.userId()
#    autoform:
#      options: ->
#        _.map Meteor.users.find().fetch(), (user)->
#          label: user.emails[0].address
#          value: user._id

Quotes.attachSchema(Schemas.Quotes)
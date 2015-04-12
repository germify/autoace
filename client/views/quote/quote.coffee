AutoForm.hooks
  insertQuote:
    onSuccess: (operation, result, template)->
      Alert.success "Thank you, someone will contact you soon"
    onError: (operation, error, template)->
      Alert.error 'Please fix the errors below'
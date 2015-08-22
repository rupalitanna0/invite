SignupView = Backbone.View.extend({

  el: '#signup-view',
  events: { 'submit form':   'createUser' },

  attributes: function () {
    return {
      name: this.nameField.val(),
      email: this.emailField.val(),
      password: this.passwordField.val(),
      password_confirmation: this.passwordConfirmationField.val(),
      cellno: this.cellnoField.val(),
      address: this.addressField.val(),
      gender: this.genderField.val(),
      age: this.ageField.val(),
      lastname: this.lastnameField.val(),
      state: this.stateField.val()
    };
  },

  createUser: function () {
    if (this.submitButton.hasClass('disabled') && this.form.data('user-created') !== true) {
      return false;
    } else {
      this.submitButton.addClass('disabled');
    }

    var self = this,
        user = new User(this.attributes());
    user.save(null, {
      error: function (originalModel, resp, options) {
        self.$el.find('input').removeClass('error');
        var errors = JSON.parse(resp.responseText).errors;
        _.each(errors, function(value, key) { 
          self.$el.find('input[name=' + key +']').addClass('error');
        });
        self.submitButton.removeClass('disabled');
      },
      success: function () {
        self.form.data('user-created', true);
        document.location.href = '/';
      }
    });

    return (this.form.data('user-created') === true);
  },

  initialize: function () {
    this.form = this.$el.find('form');
    this.nameField = this.$el.find('input[name="user[name]"]');
    this.emailField = this.$el.find('input[name="user[email]"]');
    this.passwordField = this.$el.find('input[name="user[password]"]');
    this.passwordConfirmationField = this.$el.find('input[name="user[password_confirmation]"]');
    this.ageField = this.$el.find('input[name="user[age]"]');
    this.stateField = this.$el.find('input[name="user[state]"]');
    this.addressField = this.$el.find('input[name="user[address]"]');
    this.cellnoField = this.$el.find('input[name="user[cellno]"]');
    this.ageField = this.$el.find('input[name="user[age]"]');
    this.lastnameField = this.$el.find('input[name="user[lastname]"]');
    this.genderField = this.$el.find('input[name="user[gender]"]');



    this.submitButton = this.$el.find('input[type=submit]');
  }
});











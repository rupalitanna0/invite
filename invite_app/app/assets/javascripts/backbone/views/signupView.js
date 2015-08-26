SignupView = Backbone.View.extend({

  el: '#signup-view',
  events: { 'submit form':   'createUser' },

  attributes: function () {
    return {
      name: this.nameField.val(),
      lastname: this.lastnameField.val(),
      cellno: this.cellnoField.val(),
      address: this.addressField.val(),
      gender: this.genderField.val(),
      age: this.ageField.val(),
      state: this.stateField.val(),
      email: this.emailField.val(),
      password: this.passwordField.val(),
      password_confirmation: this.passwordConfirmationField.val()
    };
  },

  createUser: function () {
    // if (this.submitButton.hasClass('disabled') && this.form.data('user-created') !== true) {
    //   return false;
    // } else {
    //   this.submitButton.addClass('disabled');
    // }

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
    this.template = HandlebarsTemplates['signUp'];
    this.render();
    this.form = this.$el.find('form');
    this.nameField = this.$el.find('input[name=name]');
    this.emailField = this.$el.find('input[name=email]');
    this.passwordField = this.$el.find('input[name=password]');
    this.passwordConfirmationField = this.$el.find('input[name=password_confirmation]');
    this.ageField = this.$el.find('input[name=age]');
    this.stateField = this.$el.find('input[name=state]');
    this.addressField = this.$el.find('input[name=address]');
    this.cellnoField = this.$el.find('input[name=cellno]');
    this.ageField = this.$el.find('input[name=age]');
    this.lastnameField = this.$el.find('input[name=lastname]');
    this.genderField = this.$el.find('input[name=gender]');
    this.submitButton = this.$el.find('input[type=submit]');
  },
  render: function(){
    this.$el.html(this.template);

    $("#signup-view").append(this.$el);
  }
});











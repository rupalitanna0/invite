App.Views.LoginView = Backbone.View.extend({
  el: '#login-view',
  events: { 'submit form':   'authorize' },

  authorize: function () {
    // if (this.submitButton.hasClass('disabled') && !(this.form.data('user-authorized') === true)) {
    //   return false;
    // } else {
    //   this.submitButton.addClass('disabled');
    // }
        var self = this,
         attrs = {
          email: this.emailField.val(),
          password: this.passwordField.val()
        };

    User.authorize(attrs, function (err, user) {
      if (err) { self.loginFailure(); }
      else { self.loginSuccess(); }
    });
    return (this.form.data('user-authorized') === true);
  },

  loginSuccess: function () {
    this.form.data('user-authorized', true);
    this.form.submit();
  },

  loginFailure: function () {
    this.$el.animate({left: '-=20'}, 100);
    this.$el.animate({left: '+=40'}, 100);
    this.$el.animate({left: '-=40'}, 100);
    this.$el.animate({left: '+=40'}, 100);
    this.$el.animate({left: '-=20'}, 100);
    this.emailField.focus();
    this.submitButton.removeClass('disabled');
  },

  initialize: function () {
    this.template = HandlebarsTemplates['login'];
    this.render();
    this.form = this.$el.find('form');
    this.emailField = this.$el.find('#login-email');
    this.passwordField = this.$el.find('#login-password');
    this.submitButton = this.$el.find('#login-button');
  },
  render: function(){
    this.$el.html(this.template);

    $('#login-view').append(this.$el);
  }

});

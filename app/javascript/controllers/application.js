import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

const togglePassword = document
  .querySelector('#togglePassword');
const password = document.querySelector('#password');
const password_confirm = document.querySelector('#password-confirm');
togglePassword.addEventListener('click', () => {
  // Toggle the type attribute using
  // getAttribure() method
  const type = password
    .getAttribute('type') === 'password' ?
    'text' : 'password';
  password.setAttribute('type', type);
  password_confirm.setAttribute('type', type);
  // Toggle the eye and bi-eye icon
  this.classList.toggle('bi-eye');
});

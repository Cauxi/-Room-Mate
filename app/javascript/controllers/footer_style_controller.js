import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="footer-style"
export default class extends Controller {
  static targets = ["link"]

  connect() {
    console.log(this.linkTargets);
    this.linkTargets.forEach(link => {
      if (link.href === window.location.href){
        link.setAttribute('aria-current', 'page')
      }
    });
  }
}

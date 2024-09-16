import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="toast"
export default class extends Controller {
  static targets = ["toast"];

  connect() {
    this.show();
  }

  show() {
    this.toastTarget.classList.add("active");
    setTimeout(() => this.hide(), 6000);
  }

  hide() {
    this.toastTarget.classList.remove("active");
  }
}

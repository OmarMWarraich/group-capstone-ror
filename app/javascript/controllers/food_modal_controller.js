import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="food-modal"
export default class extends Controller {
  static targets = ["modal", "openButton", "closeButton"];

  connect() {}

  open(event) {
    event.preventDefault();
    this.modalTarget.style.display = "block";
  }

  close(event) {
    if (event) {
      event.preventDefault();
    }
    this.modalTarget.style.display = "none";
    this.resetModalForm();
  }

  outsideClick(event) {
    if (event.target === this.modalTarget) {
      this.close();
    }
  }

  resetModalForm() {
    const form = this.modalTarget.querySelector("form");
    if (form) {
      form.reset();
    }
  }
}

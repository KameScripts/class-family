import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.querySelectorAll("textarea.auto-expand").forEach((el) => {
      el.addEventListener("input", () => this.resize(el))
      this.resize(el)
    })
  }

  resize(el) {
    el.style.height = "auto"
    el.style.height = el.scrollHeight + "px"
  }
}

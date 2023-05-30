import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// connect to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Live a unique journey","Go back to childhood", "Since 2023, vote best animal park"],
      typeSpeed: 30,
      loop: true
    })
  }
}

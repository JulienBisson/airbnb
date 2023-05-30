import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }

  // const typed = new Typed('.element', {
  //   strings: ["First sentence.", "Second sentence."],
  //   typeSpeed: 30
  // });

}

import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["result", "start", "end", "price"];

  connect() {
    console.log("Controller stimulus connected");
  }

  compute() {
    if (this.startTarget.value !== "" && this.endTarget.value !== "") {
      console.log(this.priceTarget.dataset.price);
      const priceValue = parseInt(this.priceTarget.dataset.price);
      const startDate = Date.parse(this.startTarget.value);
      const endDate = Date.parse(this.endTarget.value);

      const diff = endDate - startDate;
      const nbJours = Math.ceil(diff / (1000 * 60 * 60 * 24));
      console.log(nbJours);
      console.log(priceValue * nbJours);
      const result = priceValue * nbJours;
      this.resultTarget.innerHTML = `💰 ${result} $`;
    }
  }
}

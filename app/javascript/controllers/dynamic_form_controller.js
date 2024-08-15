import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "select"]

  connect() {
    this.updateAction()
  }

  updateAction() {
    this.selectTarget.addEventListener("change", () => {
      const selectedListId = this.selectTarget.value;
      if (selectedListId) {
        this.formTarget.action = `/lists/${selectedListId}/bookmarks`;
      } else {
        this.formTarget.action = "";
      }
    })
  }
}

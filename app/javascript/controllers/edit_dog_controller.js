import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['form', 'info'];

  displayForm() {
    this.infoTarget.classList.add('d-none');
    this.formTarget.classList.remove('d-none');
  }
}

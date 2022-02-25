import { Controller } from "@hotwired/stimulus"
import "jquery-bar-rating";
import $ from 'jquery';


export default class extends Controller {
  static targets = ["form"]

  connect() {

  }

  send(event) {
    this.formTarget.submit()
  }
}

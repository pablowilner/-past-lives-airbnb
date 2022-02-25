import { Controller } from "@hotwired/stimulus"
import "jquery-bar-rating";
import $ from 'jquery';


export default class extends Controller {
  connect() {
    document.querySelectorAll('#review_rating').forEach(element =>
      console.log(element)
    )
  }
}

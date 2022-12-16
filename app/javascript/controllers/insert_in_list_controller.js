import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-list"
export default class extends Controller {
  static targets = ['list', 'form']

  connect() {
  }

  createReview(event) {
    event.preventDefault()
    fetch(this.formTarget.action, {
      method: 'POST',
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json()) // parse the response
      .then((data) => {
        console.log(data)
        // { newReview: '<p>check logs</p>\n' }
        // insert the review into the list
        if (data.newReview) {
          this.listTarget.insertAdjacentHTML('beforeend', data.newReview)
        }
        this.formTarget.outerHTML = data.newForm
      })
  }
}

import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "modal", "modal2", "days", "total"]

  static values = {
    price: String
  }

  connect() {
    console.log(this.element)
    console.log(this.itemsTarget)
    console.log(this.formTarget)
  }

  updatePrice() {

    // if (inputs[0].value !== undefined && inputs[1].value !== undefined) {
      const inputs = document.querySelectorAll('.flatpickr-input');
      const startDate = new Date(inputs[0].value)
      const endDate = new Date(inputs[1].value)
      const days = (endDate - startDate) / 3_600_000 / 24;
      this.daysTarget.innerHTML = days
      this.totalTarget.innerHTML = days * parseInt(this.priceValue)
    // }
  }

  send(event) {
    event.preventDefault();
    const formData = new FormData(this.formTarget);
    console.log(formData);

    fetch(this.formTarget.action, {
      method: "POST", // Could be dynamic with Stimulus values
      headers: { "Accept": "application/json" },
      body: formData
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data);

        if (data.inserted_item) {
          this.modalTarget.classList.remove('show')
          this.modal2Target.innerHTML = data.inserted_item

          setTimeout(() => {
            this.modal2Target.classList.add('show')
          }, 500);


          console.log(data.inserted_item)
          // beforeend could also be dynamic with Stimulus values
          // this.itemsTarget.insertAdjacentHTML("beforeend", data.inserted_item)
        }
        this.formTarget.outerHTML = data.form
      })
}}

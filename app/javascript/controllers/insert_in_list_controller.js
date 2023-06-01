import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "modal", "modal2"]

  connect() {
    console.log(this.element)
    console.log(this.itemsTarget)
    console.log(this.formTarget)
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


          // console.log(data.inserted_item)
          // beforeend could also be dynamic with Stimulus values
          // this.itemsTarget.insertAdjacentHTML("beforeend", data.inserted_item)
        }
        this.formTarget.outerHTML = data.form
      })



}}

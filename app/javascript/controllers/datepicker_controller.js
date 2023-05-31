import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// You need to import this to use new flatpickr()
// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = [ "startDate", "endDate" ]

  connect() {
    flatpickr(this.startDateTarget, {
      enableTime: true,
      noCalendar: true,
      dateFormat: "H:i",
      // Provide an id for the plugin to work
      plugins: [new rangePlugin({ input: "#end_time"})]})
    flatpickr(this.endDateTarget, {})
  }
}

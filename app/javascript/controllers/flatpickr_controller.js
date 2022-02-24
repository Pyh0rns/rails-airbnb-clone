import flatpickr from "flatpickr";
import {Controller} from 'stimulus';
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

export default class extends Controller {
  static targets = ["start_date", "end_date", "date"]
  connect(){
    flatpickr(".datepicker", {
      mode: 'range',
      'plugins':[new rangePlugin({input: '#enddate'})],
      disable: JSON.parse(this.dateTarget.dataset.bookings)
    });
  }
}

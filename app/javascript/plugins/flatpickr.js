import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// const initFlatpickr = () => {
//   flatpickr("#range_start", {
//     altInput: true,
//     altFormat: "F j, Y",
//     dateFormat: "Y-m-d",
//     plugins: [new rangePlugin({ input: "#range_end"})]
//   });
// }

const initFlatpickr = () => {
  flatpickr("#range", {mode: "range"});
}


export { initFlatpickr };

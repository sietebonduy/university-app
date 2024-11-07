// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";
import './toggle_form';

document.addEventListener("turbolinks:load", function() {
    flatpickr(".datepicker", {
        altInput: true,
        altFormat: "F j, Y",
        dateFormat: "Y-m-d"
    });
});

document.addEventListener('turbo:load', () => {
    flatpickr('.flatpickr', {
        enableTime: true,
        dateFormat: "Y-m-d H:i",
        time_24hr: true
    });
});

document.addEventListener('DOMContentLoaded', function() {
    flatpickr("input[data-date-format]", {
        dateFormat: "d.m.Y"
    });
});

Rails.start()
Turbolinks.start()
ActiveStorage.start()

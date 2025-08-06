filter_preview_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  update() {
    const fileInput = document.querySelector('input[type="file"]')
    const filterSelect = document.querySelector('select')
    const previewContainer = document.getElementById('preview-container')

    if (fileInput.files.length > 0) {
      const reader = new FileReader()
      reader.onload = function(e) {
        previewContainer.innerHTML = `<img src="${e.target.result}" class="w-full ${filterSelect.value} rounded">`
      }
      reader.readAsDataURL(fileInput.files[0])
    }
  }
}

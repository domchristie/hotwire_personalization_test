// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import { Turbo } from "@hotwired/turbo-rails"
import "controllers"

Turbo.StreamActions.fetch = function () {
  const fetcher = document.createElement('a')
  fetcher.href = this.getAttribute('url')
  fetcher.dataset.turboStream = true
  document.body.appendChild(fetcher)
  fetcher.click()
  document.body.removeChild(fetcher)
}

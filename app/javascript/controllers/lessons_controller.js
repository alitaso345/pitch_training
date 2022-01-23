import {Controller} from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ["result", "output"]

  answer(event) {
    const userResponse = this.resultTarget.textContent
    const output = userResponse === event.target.value  ? '正解' : `不正解。正解は${this.resultTarget.textContent}`
    this.outputTarget.textContent = output
  }

  reload() {
    location.reload()
  }
}
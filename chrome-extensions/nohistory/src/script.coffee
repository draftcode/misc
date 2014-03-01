eraseData = ->
  chrome.browsingData.remove({}, {
    "downloads": true,
    "formData": true,
    "history": true,
    "passwords": true,
  })
eraseData()

noHandle = false

editableList = [
  "text",
  "password",
  "number",
  "search",
  "tel",
  "url",
  "email",
  "time",
  "datetime",
  "datetime-local",
  "deate",
  "week",
  "color"
]

focusHandler = (e)->
  if e.target.isContentEditable
    noHandle = true
  else if e.target.nodeName.toLowerCase() == "input" and e.target.type.toLowerCase() in editableList
    noHandle = true
  else if e.target.nodeName.toLowerCase() == "textarea"
    noHandle = true
  else
    nohandle = false

keypressHandler = (e)->
  if noHandle then return
  switch String.fromCharCode(e.keyCode)
    when 'h'
      window.history.back()
    when 'l'
      window.history.forward()
    when 'j'
      window.scrollBy(0, 100)
    when 'k'
      window.scrollBy(0, -100)

document.addEventListener("keypress", keypressHandler)
document.addEventListener("focus", focusHandler)

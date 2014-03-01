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
    console.log("No handle")
    noHandle = true
  else if e.target.nodeName.toLowerCase() == "input" and e.target.type.toLowerCase() in editableList
    console.log("No handle")
    noHandle = true
  else if e.target.nodeName.toLowerCase() == "textarea"
    console.log("No handle")
    noHandle = true
  else
    console.log("Handle")
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
    else
      console.log(e.keyCode)
      console.log(String.fromCharCode(e.keyCode))

document.addEventListener("keypress", keypressHandler, true)
document.addEventListener("focus", focusHandler, true)

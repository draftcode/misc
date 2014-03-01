chrome.contextMenus.create({
  title: "Copy URL (Markdown)"
  type: "normal"
  contexts: ["page"]
  onclick: (info, tab) ->
    buffer = document.createElement("textarea")
    document.body.appendChild(buffer)

    buffer.value = "[#{tab.title}](#{info.pageUrl})"
    buffer.select()
    document.execCommand('copy')

    document.body.appendChild(buffer)
})

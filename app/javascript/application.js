// Entry point for the build script in your package.json
import "bootstrap";
import "@hotwired/turbo-rails"
import "./controllers"
import "trix"
// import "@rails/actiontext";
import { AttachmentUpload } from "@rails/actiontext/app/javascript/actiontext/attachment_upload"

addEventListener("trix-attachment-add", event => {
  const { attachment, target } = event

  if (attachment.file) {
    const upload = new AttachmentUpload(attachment, target)
    upload.start()
  }
})

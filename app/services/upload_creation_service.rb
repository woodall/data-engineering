class UploadCreationService

  def self.call(file_contents, upload)
    line_items  = StringToArrayConversionService.call(file_contents)
    objects     = ObjectBuildService.call(line_items)
    checkouts   = BuildCheckoutService.call(objects, upload)
    upload      = Checkout.where(upload_id: upload.id)
  end
end



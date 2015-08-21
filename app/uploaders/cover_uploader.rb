class CoverUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}"
  end

  version :normal do
    process resize_to_fill: [750, 407]
  end

  version :thumb do
    process resize_to_fill: [378, 250]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def cache_dir
    Rails.root.join('tmp/cover-cache')
  end
end

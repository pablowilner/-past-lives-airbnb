module ApplicationHelper

  def cloudinary_picture(character)
    if character.photo.key.present?
      cl_image_tag character.photo.key, height: 300, width: 400, crop: :fill
    else
      image_tag "stairway-to-head.jpg", height: 300, width: 400, crop: :fill
    end
  end
end

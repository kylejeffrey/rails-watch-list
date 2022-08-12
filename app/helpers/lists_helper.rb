module ListsHelper
  def get_url(list)
    if  list.photo.attached?
      cl_image_path(list.photo.key)
    elsif list.bookmarks.any?
       list.bookmarks.first.movie.poster_url
    else
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPQDYau3Hs4-xw1i8jVSUY4BlF4FLmg8lQqg&usqp=CAU'
    end
  end
end

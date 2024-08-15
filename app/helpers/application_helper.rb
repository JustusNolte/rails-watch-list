module ApplicationHelper
  def image_url(file_path, size: 'w500', type: :poster)
    base_url = TMDB_CONFIG['base_url']
    sizes = type == :poster ? TMDB_CONFIG['poster_sizes'] : TMDB_CONFIG['logo_sizes']

    # Ensure the size is valid, fall back to default size if not
    size = sizes.include?(size) ? size : sizes.first

    "#{base_url}#{size}#{file_path}"
  end
end

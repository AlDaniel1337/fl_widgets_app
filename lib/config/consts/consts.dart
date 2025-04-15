// Imagenes en los assets
enum AssetsImagesUrl {
  jarLoading (imageUrl: "assets/images/jar-loading.gif");

  const AssetsImagesUrl({ 
    required String imageUrl 
  }) : _imageUrl = imageUrl;

  final String _imageUrl;
  String get imageUrl => _imageUrl;
}

// Imagenes en internet
class NetworkImagesUrl {

  ImagesUrl picsum(String idImage) => _NetworkImagesUrlBuilder()
  .setUrl("https://picsum.photos/id/$idImage/500/300")
  .build();
  
}

class ImagesUrl {
  var url = "url not defined";
}

class _NetworkImagesUrlBuilder {

  final ImagesUrl _networkImagesUrl = ImagesUrl();

  _NetworkImagesUrlBuilder setUrl(String url) { 
    _networkImagesUrl.url = url;
    return this;
  }

  ImagesUrl build() => _networkImagesUrl;
}
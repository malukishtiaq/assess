class Attachments {
  int Id = 0;
  String typeAttachment = "";
  String fileUrl = "";
  String fileSimple = "";
  String fileName = "";
  Stream? fileStream;

  VideoThumb? thumb = VideoThumb();
}

class VideoThumb {
  String typeAttachment = "thumb";
  String fileUrl = "";
  Stream? fileStream;
}

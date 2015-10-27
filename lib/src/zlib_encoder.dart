part of archive;

class ZLibEncoder {
  static const int DEFLATE = 8;

  List<int> encode(List<int> data, {int level}) {
    var codec = new ZLibCodec(level: level == null ? ZLibOption.DEFAULT_LEVEL : level, windowBits: 8);
    return codec.encode(data);
  }
}

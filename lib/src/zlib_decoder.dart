part of archive;

/**
 * Decompress data with the zlib format decoder.
 */
class ZLibDecoder {
  static const int DEFLATE = 8;

  List<int> decodeBytes(List<int> data, {bool verify: false}) {
    return ZLIB.decode(data);
  }

  List<int> decodeBuffer(InputStream input, {bool verify: false}) {
    return decodeBytes(input.toUint8List(), verify: verify);
  }
}

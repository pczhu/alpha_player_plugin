// Autogenerated from Pigeon (v9.2.5), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

enum DataSourceType {
  Assets,
  Url,
  File,
}

enum AlphaPlayerScaleType {
  ScaleToFill,
  ScaleAspectFitCenter,
  ScaleAspectFill,
  TopFill,
  BottomFill,
  LeftFill,
  RightFill,
  TopFit,
  BottomFit,
  LeftFit,
  RightFit,
}

enum AlphaVideoEvent {
  Init,
  Play,
  Pause,
  Complate,
  Error,
}

class TextureMessage {
  TextureMessage({
    required this.textureId,
  });

  int textureId;

  Object encode() {
    return <Object?>[
      textureId,
    ];
  }

  static TextureMessage decode(Object result) {
    result as List<Object?>;
    return TextureMessage(
      textureId: result[0]! as int,
    );
  }
}

class LoopingMessage {
  LoopingMessage({
    required this.textureId,
    required this.isLooping,
  });

  int textureId;

  bool isLooping;

  Object encode() {
    return <Object?>[
      textureId,
      isLooping,
    ];
  }

  static LoopingMessage decode(Object result) {
    result as List<Object?>;
    return LoopingMessage(
      textureId: result[0]! as int,
      isLooping: result[1]! as bool,
    );
  }
}

class VolumeMessage {
  VolumeMessage({
    required this.textureId,
    required this.volume,
  });

  int textureId;

  double volume;

  Object encode() {
    return <Object?>[
      textureId,
      volume,
    ];
  }

  static VolumeMessage decode(Object result) {
    result as List<Object?>;
    return VolumeMessage(
      textureId: result[0]! as int,
      volume: result[1]! as double,
    );
  }
}

class PlaybackSpeedMessage {
  PlaybackSpeedMessage({
    required this.textureId,
    required this.speed,
  });

  int textureId;

  double speed;

  Object encode() {
    return <Object?>[
      textureId,
      speed,
    ];
  }

  static PlaybackSpeedMessage decode(Object result) {
    result as List<Object?>;
    return PlaybackSpeedMessage(
      textureId: result[0]! as int,
      speed: result[1]! as double,
    );
  }
}

class PositionMessage {
  PositionMessage({
    required this.textureId,
    required this.position,
  });

  int textureId;

  int position;

  Object encode() {
    return <Object?>[
      textureId,
      position,
    ];
  }

  static PositionMessage decode(Object result) {
    result as List<Object?>;
    return PositionMessage(
      textureId: result[0]! as int,
      position: result[1]! as int,
    );
  }
}

class CreateMessage {
  CreateMessage({
    required this.viewID,
    this.asset,
    this.uri,
    this.packageName,
    this.formatHint,
    this.httpHeaders,
  });

  int viewID;

  String? asset;

  String? uri;

  String? packageName;

  String? formatHint;

  Map<String?, String?>? httpHeaders;

  Object encode() {
    return <Object?>[
      viewID,
      asset,
      uri,
      packageName,
      formatHint,
      httpHeaders,
    ];
  }

  static CreateMessage decode(Object result) {
    result as List<Object?>;
    return CreateMessage(
      viewID: result[0]! as int,
      asset: result[1] as String?,
      uri: result[2] as String?,
      packageName: result[3] as String?,
      formatHint: result[4] as String?,
      httpHeaders: (result[5] as Map<Object?, Object?>?)?.cast<String?, String?>(),
    );
  }
}

class InitMessage {
  InitMessage({
    required this.viewId,
    required this.dataSource,
    required this.dataSourceType,
    required this.videoAlign,
    required this.isLooping,
  });

  int viewId;

  String dataSource;

  DataSourceType dataSourceType;

  AlphaPlayerScaleType videoAlign;

  bool isLooping;

  Object encode() {
    return <Object?>[
      viewId,
      dataSource,
      dataSourceType.index,
      videoAlign.index,
      isLooping,
    ];
  }

  static InitMessage decode(Object result) {
    result as List<Object?>;
    return InitMessage(
      viewId: result[0]! as int,
      dataSource: result[1]! as String,
      dataSourceType: DataSourceType.values[result[2]! as int],
      videoAlign: AlphaPlayerScaleType.values[result[3]! as int],
      isLooping: result[4]! as bool,
    );
  }
}

class AlphaVideoEventMessage {
  AlphaVideoEventMessage({
    required this.viewId,
    required this.event,
  });

  int viewId;

  AlphaVideoEvent event;

  Object encode() {
    return <Object?>[
      viewId,
      event.index,
    ];
  }

  static AlphaVideoEventMessage decode(Object result) {
    result as List<Object?>;
    return AlphaVideoEventMessage(
      viewId: result[0]! as int,
      event: AlphaVideoEvent.values[result[1]! as int],
    );
  }
}

class _AndroidAlphaVideoPlayerApiCodec extends StandardMessageCodec {
  const _AndroidAlphaVideoPlayerApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is CreateMessage) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is InitMessage) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is LoopingMessage) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is PlaybackSpeedMessage) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is PositionMessage) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else if (value is TextureMessage) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else if (value is VolumeMessage) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128: 
        return CreateMessage.decode(readValue(buffer)!);
      case 129: 
        return InitMessage.decode(readValue(buffer)!);
      case 130: 
        return LoopingMessage.decode(readValue(buffer)!);
      case 131: 
        return PlaybackSpeedMessage.decode(readValue(buffer)!);
      case 132: 
        return PositionMessage.decode(readValue(buffer)!);
      case 133: 
        return TextureMessage.decode(readValue(buffer)!);
      case 134: 
        return VolumeMessage.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class AndroidAlphaVideoPlayerApi {
  /// Constructor for [AndroidAlphaVideoPlayerApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  AndroidAlphaVideoPlayerApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _AndroidAlphaVideoPlayerApiCodec();

  Future<void> initialize(InitMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidAlphaVideoPlayerApi.initialize', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> created(CreateMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidAlphaVideoPlayerApi.created', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> dispose(TextureMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidAlphaVideoPlayerApi.dispose', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> setLooping(LoopingMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidAlphaVideoPlayerApi.setLooping', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> setVolume(VolumeMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidAlphaVideoPlayerApi.setVolume', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> setPlaybackSpeed(PlaybackSpeedMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidAlphaVideoPlayerApi.setPlaybackSpeed', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> play(TextureMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidAlphaVideoPlayerApi.play', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<PositionMessage> position(TextureMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidAlphaVideoPlayerApi.position', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as PositionMessage?)!;
    }
  }

  Future<void> seekTo(PositionMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidAlphaVideoPlayerApi.seekTo', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> pause(TextureMessage arg_msg) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.AndroidAlphaVideoPlayerApi.pause', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_msg]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }
}

class _FlutterAlphaVideoPlayerApiCodec extends StandardMessageCodec {
  const _FlutterAlphaVideoPlayerApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is AlphaVideoEventMessage) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is TextureMessage) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128: 
        return AlphaVideoEventMessage.decode(readValue(buffer)!);
      case 129: 
        return TextureMessage.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class FlutterAlphaVideoPlayerApi {
  static const MessageCodec<Object?> codec = _FlutterAlphaVideoPlayerApiCodec();

  void onVideoError(TextureMessage msg, String errorMsg);

  void onVideoEvent(AlphaVideoEventMessage msg);

  static void setup(FlutterAlphaVideoPlayerApi? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FlutterAlphaVideoPlayerApi.onVideoError', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FlutterAlphaVideoPlayerApi.onVideoError was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final TextureMessage? arg_msg = (args[0] as TextureMessage?);
          assert(arg_msg != null,
              'Argument for dev.flutter.pigeon.FlutterAlphaVideoPlayerApi.onVideoError was null, expected non-null TextureMessage.');
          final String? arg_errorMsg = (args[1] as String?);
          assert(arg_errorMsg != null,
              'Argument for dev.flutter.pigeon.FlutterAlphaVideoPlayerApi.onVideoError was null, expected non-null String.');
          api.onVideoError(arg_msg!, arg_errorMsg!);
          return;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FlutterAlphaVideoPlayerApi.onVideoEvent', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.FlutterAlphaVideoPlayerApi.onVideoEvent was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final AlphaVideoEventMessage? arg_msg = (args[0] as AlphaVideoEventMessage?);
          assert(arg_msg != null,
              'Argument for dev.flutter.pigeon.FlutterAlphaVideoPlayerApi.onVideoEvent was null, expected non-null AlphaVideoEventMessage.');
          api.onVideoEvent(arg_msg!);
          return;
        });
      }
    }
  }
}
.class public Lcom/instagram/creation/video/jni/VideoBridge;
.super Ljava/lang/Object;
.source "VideoBridge.java"
.method static constructor <clinit>()V
.registers 1
const-string v0, "log"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
const-string v0, "vpx"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
const-string v0, "ogg"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
const-string v0, "vorbis"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
const-string v0, "scrambler"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
const-string v0, "glcommon"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
const-string v0, "video"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
return-void
.end method
.method public static native compileProgram(Ljava/lang/String;)I
.end method
.method public static native configureAACTrack(II)I
.end method
.method public static native configureVideoCodec(Ljava/lang/String;II)I
.end method
.method public static native configureVorbisEncoder(Ljava/lang/String;IID)I
.end method
.method public static native encodeAudioBuffer(Ljava/nio/ByteBuffer;I)I
.end method
.method public static native encodeFrame(JJ)I
.end method
.method public static native finishEncoding()I
.end method
.method public static native finishEncodingAudio()I
.end method
.method public static native writeAudioPacket(Ljava/nio/ByteBuffer;IJ)I
.end method
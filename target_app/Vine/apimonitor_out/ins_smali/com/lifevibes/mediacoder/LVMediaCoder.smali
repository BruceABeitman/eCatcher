.class public interface abstract Lcom/lifevibes/mediacoder/LVMediaCoder;
.super Ljava/lang/Object;
.source "LVMediaCoder.java"
.method public abstract cancel()V
.end method
.method public abstract encodeAudio([BII)Ljava/nio/ShortBuffer;
.end method
.method public abstract encodeVideo(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
.end method
.method public abstract encodeVideoAsync(Ljava/nio/ByteBuffer;IZ)V
.end method
.method public abstract getConfiguration()Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;
.end method
.method public abstract getOutputFilePath()Ljava/lang/String;
.end method
.method public abstract recordAudio(Ljava/nio/ShortBuffer;)V
.end method
.method public abstract recordVideo(Ljava/nio/ByteBuffer;I)V
.end method
.method public abstract setEncoderVideoAsyncListener(Lcom/lifevibes/mediacoder/LVMediaCoder$LVMediaCoderICSEncoderProgressListener;)V
.end method
.method public abstract startEncoding()V
.end method
.method public abstract startRecording(Ljava/lang/String;)V
.end method
.method public abstract stop()V
.end method
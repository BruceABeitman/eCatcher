.class public interface abstract Lcom/lifevibes/mediacoder/LVMediaCoder;
.super Ljava/lang/Object;
.source "LVMediaCoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lifevibes/mediacoder/LVMediaCoder$LVMediaCoderICSEncoderProgressListener;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract encodeAudio([BII)Ljava/nio/ShortBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract encodeVideo(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract encodeVideoAsync(Ljava/nio/ByteBuffer;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getConfiguration()Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;
.end method

.method public abstract getOutputFilePath()Ljava/lang/String;
.end method

.method public abstract recordAudio(Ljava/nio/ShortBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract recordVideo(Ljava/nio/ByteBuffer;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setEncoderVideoAsyncListener(Lcom/lifevibes/mediacoder/LVMediaCoder$LVMediaCoderICSEncoderProgressListener;)V
.end method

.method public abstract startEncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract startRecording(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

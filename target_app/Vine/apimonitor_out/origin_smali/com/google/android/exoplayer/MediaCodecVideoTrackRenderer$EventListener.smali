.class public interface abstract Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
.super Ljava/lang/Object;
.source "MediaCodecVideoTrackRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onCryptoError(Landroid/media/MediaCodec$CryptoException;)V
.end method

.method public abstract onDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
.end method

.method public abstract onDrawnToSurface(Landroid/view/Surface;)V
.end method

.method public abstract onDroppedFrames(IJ)V
.end method

.method public abstract onVideoSizeChanged(II)V
.end method

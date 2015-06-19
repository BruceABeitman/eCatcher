.class public interface abstract Lcom/lifevibes/mediacoder/LVMediaCoder$LVMediaCoderICSEncoderProgressListener;
.super Ljava/lang/Object;
.source "LVMediaCoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/mediacoder/LVMediaCoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LVMediaCoderICSEncoderProgressListener"
.end annotation


# virtual methods
.method public abstract onComplete()V
.end method

.method public abstract onError(Ljava/lang/Exception;I)V
.end method

.method public abstract onFrameAvailable(Ljava/nio/ByteBuffer;)V
.end method

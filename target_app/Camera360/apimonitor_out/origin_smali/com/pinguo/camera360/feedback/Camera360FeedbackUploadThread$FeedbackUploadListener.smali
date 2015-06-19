.class public interface abstract Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread$FeedbackUploadListener;
.super Ljava/lang/Object;
.source "Camera360FeedbackUploadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/feedback/Camera360FeedbackUploadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeedbackUploadListener"
.end annotation


# virtual methods
.method public abstract allUploadCompelete()V
.end method

.method public abstract fail(Lcom/pinguo/camera360/feedback/Camera360FeedbackData;)V
.end method

.method public abstract start()V
.end method

.method public abstract uploadSuccess(Ljava/lang/String;)V
.end method

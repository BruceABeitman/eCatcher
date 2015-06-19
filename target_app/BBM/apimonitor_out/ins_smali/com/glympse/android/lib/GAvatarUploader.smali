.class public interface abstract Lcom/glympse/android/lib/GAvatarUploader;
.super Ljava/lang/Object;
.source "GAvatarUploader.java"
.implements Lcom/glympse/android/api/GEventListener;
.method public abstract isUploadingAvatar()Z
.end method
.method public abstract sessionFailed(Ljava/lang/String;Lcom/glympse/android/lib/GImagePrivate;Lcom/glympse/android/hal/GDrawablePrivate;)V
.end method
.method public abstract start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.end method
.method public abstract stop()V
.end method
.method public abstract uploadAvatar(Lcom/glympse/android/lib/GImagePrivate;Lcom/glympse/android/hal/GDrawablePrivate;)Z
.end method
.method public abstract uploadingComplete(Z)V
.end method
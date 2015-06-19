.class public interface abstract Lco/vine/android/util/video/VideoListener;
.super Ljava/lang/Object;
.source "VideoListener.java"


# virtual methods
.method public abstract onVideoPathError(Lco/vine/android/util/video/VideoCache;Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V
.end method

.method public abstract onVideoPathObtained(Lco/vine/android/util/video/VideoCache;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/util/video/VideoCache;",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/video/VideoKey;",
            "Lco/vine/android/util/video/UrlVideo;",
            ">;)V"
        }
    .end annotation
.end method

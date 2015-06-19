.class public interface abstract Lco/vine/android/util/image/PhotoImagesListener;
.super Ljava/lang/Object;
.source "PhotoImagesListener.java"


# virtual methods
.method public abstract onPhotoImageError(Lco/vine/android/util/image/PhotoImagesCache;Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V
.end method

.method public abstract onPhotoImageLoaded(Lco/vine/android/util/image/PhotoImagesCache;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/util/image/PhotoImagesCache;",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation
.end method

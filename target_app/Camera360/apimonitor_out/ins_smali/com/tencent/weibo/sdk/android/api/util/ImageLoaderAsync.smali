.class public Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync;
.super Ljava/lang/Object;
.source "ImageLoaderAsync.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public loadImage(Ljava/lang/String;Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$callBackImage;)Landroid/graphics/drawable/Drawable;
.registers 5
new-instance v0, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$1;
invoke-direct {v0, p0, p2, p1}, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$1;-><init>(Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync;Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$callBackImage;Ljava/lang/String;)V
new-instance v1, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$2;
invoke-direct {v1, p0, p1, v0}, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$2;-><init>(Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync;Ljava/lang/String;Landroid/os/Handler;)V
invoke-virtual {v1}, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$2;->start()V
const/4 v1, 0x0
return-object v1
.end method